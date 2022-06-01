import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_counter/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state, 0);
    });
    group('increment', () {
      blocTest<CounterCubit, int>(
        'emits [1] when state is 0',
        build: CounterCubit.new,
        act: (cubit) => cubit.increment(),
        expect: () => const <int>[1],
      );

      blocTest<CounterCubit, int>(
          'emit [1 ,2] when state is 0 and invoked twice',
          build: CounterCubit.new,
          act: (cubit) => cubit
            ..increment()
            ..increment);

      blocTest<CounterCubit, int>(
        'emit [41] when state is 40',
        build: () => CounterCubit(),
        seed: () => 40,
        act: (cubit) => cubit..increment(),
        expect: () => const <int>[41],
      );
    });
    group('decrement', () {
      blocTest<CounterCubit, int>(
        'emits [-1] when state is 0',
        build: CounterCubit.new,
        act: (cubit) => cubit.decrement(),
        expect: () => const <int>[-1],
      );

      blocTest<CounterCubit, int>(
        'emit [-1 ,-2] when state is 0 and invoked twice',
        build: CounterCubit.new,
        act: (cubit) => cubit
          ..decrement()
          ..decrement(),
      );

      blocTest<CounterCubit, int>(
        'emit [39] when state is 40',
        build: () => CounterCubit(),
        seed: () => 40,
        act: (cubit) => cubit..decrement(),
        expect: () => const <int>[39],
      );
    });
  });
}
