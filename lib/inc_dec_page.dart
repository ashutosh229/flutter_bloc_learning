import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    final incrementFunc = counterCubit.increment();
    final decrementFunc = counterCubit.decrement();
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              incrementFunc;
            },
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              decrementFunc;
            },
            tooltip: "Decrement",
            child: Icon(Icons.minimize),
          )
        ],
      ),
    );
  }
}
