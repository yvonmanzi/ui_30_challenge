import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layouts/bloc/layout_bloc.dart';

import '../bloc/bloc.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LayoutBloc(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  static const ValueKey button1Key = ValueKey('firstButtonKey');
  static const ValueKey button2key = ValueKey('secondButtonKey');
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LayoutBloc, LayoutState>(
        // buildWhen: (previous, current) =>
        //     previous.runtimeType != current.runtimeType,
        builder: (context, state) {
          return Column(children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: state.colors.first,
                  child: Center(
                      child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black),
                    child: TextButton(
                        key: button1Key,
                        onPressed: () => {
                              context
                                  .read<LayoutBloc>()
                                  .add(const ButtonPressed(key: button1Key))
                            },
                        child: const Text(
                          'Press Me!',
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        )),
                  )),
                )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: state.colors.last),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle),
                  child: TextButton(
                    key: button2key,
                    child: const Text('Press Me!',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        )),
                    onPressed: () => buttonPressed(context),
                  ),
                ),
              ),
            ))
          ]);
        },
      ),
    );
  }

  void buttonPressed(BuildContext context) {
    context.read<LayoutBloc>().add(const ButtonPressed(key: button2key));
  }
}
