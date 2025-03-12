import 'package:bloc_pattern/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(bloc: ,builder: (context) {
      return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              tooltip: "Increment",
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {},
              tooltip: "Decrement",
              child: Icon(Icons.minimize),
            )
          ],
        ),
      );
    });
  }
}
