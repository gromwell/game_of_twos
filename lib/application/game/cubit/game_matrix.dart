import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:game_of_twos/constants.dart';
import 'package:game_of_twos/presentation/pages/game/game_page.dart';

//   x(row)→
// y |0,0|0,1|0,2|
// ↓ |1,0|1,1|1,2|
//   |2,0|2,1|2,2|
//
//   |0|1|2|
//   |3|4|5|
//   |6|7|8|

class GameMatrix extends Iterable {
  GameMatrix(int size)
      : data = List.generate(
          size,
          (index) => List.generate(size, (index) => Constants.gamefieldInitial),
        );

  GameMatrix.copy(GameMatrix gameMatrix)
      : data = List.generate(
          gameMatrix.size,
          (row) => List.generate(
            gameMatrix.size,
            (column) => gameMatrix.getAt(column: column, row: row),
          ),
        );

  final List<List<int>> data;

  int get size => data.length;

  @override
  Iterator get iterator => toSingleList().iterator;

  @override
  bool operator ==(Object other) {
    if (other is GameMatrix) {
      return listEquals(toSingleList(), other.toSingleList());
    } else {
      // assert(false);
      return false;
    }
  }

  @override
  int get hashCode => data.hashCode;

  int getAt({required int column, required int row}) {
    return data[row][column];
  }

  int getAtPosition({required int position}) {
    return data[(position / size).floor()][position % size];
  }

  void setAt(int value, {required int column, required int row}) {
    data[row][column] = value;
  }

  void setAtPosition(int value, {required int position}) {
    data[(position / size).floor()][position % size] = value;
  }

  List<int> toSingleList() {
    final List<int> singleList = [];
    for (final row in data) {
      singleList.addAll(row);
    }
    return singleList;
  }

  int get maxValue => toSingleList().reduce(max);

  int get minValue => toSingleList().reduce(min);
}
