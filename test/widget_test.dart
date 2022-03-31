// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_twos/application/highscore/highscore_bloc.dart';
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

    HighscoreBloc build() => HydratedBlocOverrides.runZoned(
          () => HighscoreBloc(),
          storage: hydratedStorage,
        );

    blocTest<HighscoreBloc, HighscoreState>(
      'emits [] when nothing is added',
      build: () => build(),
      expect: () => [],
    );
    blocTest<HighscoreBloc, HighscoreState>(
      'initial state is 0',
      build: () => build(),
      verify: (bloc) => bloc.state.highScore == Constants.highScoreInitial,
    );
    blocTest<HighscoreBloc, HighscoreState>(
      'changing highscores',
      build: () => build(),
      act: (bloc) => bloc
        ..add(const HighscoreEvent.reset())
        ..add(const HighscoreEvent.update(highscore: 100))
        ..add(const HighscoreEvent.update(highscore: 100))
        ..add(const HighscoreEvent.update(highscore: 50))
        ..add(const HighscoreEvent.reset())
        ..add(const HighscoreEvent.update(highscore: 200)),
      expect: () => const [
        HighscoreState(highScore: 100),
        HighscoreState(highScore: 0),
        HighscoreState(highScore: 200)
      ],
    );
    blocTest<HighscoreBloc, HighscoreState>(
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
