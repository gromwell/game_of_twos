import 'package:game_of_twos/constants.dart';

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
  Iterator get iterator => _toSingleList().iterator;

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

  List<int> _toSingleList() {
    final List<int> singleList = [];
    for (final row in data) {
      singleList.addAll(row);
    }
    return singleList;
  }
}
