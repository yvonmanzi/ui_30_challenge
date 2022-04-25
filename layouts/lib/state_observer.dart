// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';

class LayoutBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
