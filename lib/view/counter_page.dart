import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/counter_cubit.dart';
import 'counter_view.dart';

/// A [StatelessWidget] which is responsible for providing a [CounterCubit] instance to the [CounterView]
/// It's important to separate or decouple the creation
/// of a Cubit from the consumption of a Cubit in order
/// to have code that is much more testable and reusable.
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        create: (_) => CounterCubit(), child: CounterView());
  }
}
