import 'package:flutter/cupertino.dart';
import 'package:game_of_twos/application/game/cubit/game_cubit.dart';

class GameGestureDetector extends StatefulWidget {
  const GameGestureDetector({required this.child, required this.onDrag});

  final Widget child;
  final Function(Direction) onDrag;

  @override
  State<GameGestureDetector> createState() => _GameGestureDetectorState();
}

class _GameGestureDetectorState extends State<GameGestureDetector> {
  double verticalOffset = 0.0;
  double horizontalOffset = 0.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (_) {
        _resetVerticalOffset();
      },
      onVerticalDragUpdate: (details) {
        _updateVerticalOffset(details);
      },
      onVerticalDragEnd: (_) {
        Direction direction;
        if (verticalOffset.isNegative) {
          direction = Direction.up;
        } else {
          direction = Direction.down;
        }
        widget.onDrag(direction);
        _resetVerticalOffset();
      },
      onHorizontalDragStart: (_) {
        _resetHorizontalOffset();
      },
      onHorizontalDragUpdate: (details) {
        _updateHorizontalOffset(details);
      },
      onHorizontalDragEnd: (_) {
        Direction direction;
        if (horizontalOffset.isNegative) {
          direction = Direction.left;
        } else {
          direction = Direction.right;
        }
        widget.onDrag(direction);
        _resetHorizontalOffset();
      },
      child: widget.child,
    );
  }

  void _updateHorizontalOffset(DragUpdateDetails details) {
    final double? primaryDelta = details.primaryDelta;
    if (primaryDelta != null) {
      horizontalOffset += primaryDelta;
    }
  }

  void _resetHorizontalOffset() {
    horizontalOffset = 0.0;
  }

  void _updateVerticalOffset(DragUpdateDetails details) {
    final double? primaryDelta = details.primaryDelta;
    if (primaryDelta != null) {
      verticalOffset += primaryDelta;
    }
  }

  void _resetVerticalOffset() {
    verticalOffset = 0.0;
  }
}
