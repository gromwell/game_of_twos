part of 'highscore_bloc.dart';

abstract class HighscoreEvent {}

class UpdateHighscoreEvent extends HighscoreEvent {
  UpdateHighscoreEvent({required this.highscore});
  int highscore;
}

class ResetHighscoreEvent extends HighscoreEvent {}
