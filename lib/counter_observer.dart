import 'package:bloc/bloc.dart';

/// [BlocObserver] for the counter application which
/// observes all state changes
class CounterObserver extends BlocObserver {
  ///to see all state changes that occur.
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
