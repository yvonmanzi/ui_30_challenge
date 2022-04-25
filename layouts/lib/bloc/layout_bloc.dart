import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:layouts/view/app_page.dart';

part 'layout_event.dart';
part 'layout_state.dart';

class LayoutBloc extends Bloc<LayoutEvent, LayoutState> {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange
  ];
  LayoutBloc() : super(const LayoutInitial([Colors.orange, Colors.blue])) {
    on<ButtonPressed>((event, emit) {
      final int color1Index =
          (colors.indexOf(state.colors.first) + 1) % colors.length;

      if (event.key == AppView.button1Key) {
        // state.colors.first = colors[color1Index];
        emit(LayoutInProgress([colors[color1Index], state.colors.last]));
      }
      final int color2Index =
          (colors.indexOf(state.colors.last) + 1) % colors.length;

      if (event.key == AppView.button2key) {
        // state.colors.last = colors[color2Index];
        emit(LayoutInProgress([state.colors.first, colors[color2Index]]));
      }
    });
  }
}
