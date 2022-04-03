// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_twos/application/highscore/high_score_cubit.dart';
import 'package:game_of_twos/constants.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

Future<void> main() async {
  group('Highscore bloc', () {
    late Storage hydratedStorage;

    setUp(() {
      hydratedStorage = MockStorage();
      when(() => hydratedStorage.write(any(), any<dynamic>()))
          .thenAnswer((_) async {});
    });

    HighScoreCubit build() => HydratedBlocOverrides.runZoned(
          () => HighScoreCubit(),
          storage: hydratedStorage,
        );

    blocTest<HighScoreCubit, HighScoreState>(
      'emits [] when nothing is added',
      build: () => build(),
      expect: () => [],
    );
    blocTest<HighScoreCubit, HighScoreState>(
      'initial state is 0',
      build: () => build(),
      verify: (bloc) => bloc.state.highScore == Constants.highScoreInitial,
    );
    blocTest<HighScoreCubit, HighScoreState>(
      'changing highscores',
      build: () => build(),
      act: (cubit) => cubit
        ..reset()
        ..update(highScore: 100)
        ..update(highScore: 100)
        ..update(highScore: 50)
        ..reset()
        ..update(highScore: 200),
      expect: () => const [
        HighScoreState(highScore: 100),
        HighScoreState(highScore: 0),
        HighScoreState(highScore: 200)
      ],
    );
    blocTest<HighScoreCubit, HighScoreState>(
      'state is hydrated',
      build: () => build(),
      verify: (bloc) => bloc.state.highScore == 200,
    );
  });
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
