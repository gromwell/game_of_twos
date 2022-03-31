part of 'game_bloc.dart';

enum Direction { top, bottom, left, right }

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.drag(Direction direction) = _DragGameEvent;
  const factory GameEvent.addNewTwo() = _AddNewTwoGameEvent;
  const factory GameEvent.gameOver() = _GameOverGameEvent;
  const factory GameEvent.reset() = _ResetGameEvent;
}
