import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LayoutCubit extends Cubit<List<Color>> {
  final List<Color> colors = [Colors.red, Colors.blue, Colors.green];
  LayoutCubit() : super([Colors.orange, Colors.blue]);

  void changeUpperColor(Color color) {
    int n = colors.length;
    List<Color> ls = [colors[(colors.indexOf(color) + 1) % n], state[1]];
    emit(ls);
  }

  void changeLowerColor(Color color) {
    int n = colors.length;
    List<Color> ls = [colors[(colors.indexOf(color) + 1) % n], state[0]];
    emit(ls);
  }
}
