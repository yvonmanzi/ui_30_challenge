part of 'layout_bloc.dart';

@immutable
abstract class LayoutState extends Equatable {
  final List<Color> colors;
  const LayoutState(this.colors);
  @override
  List<Object?> get props => colors;
}

class LayoutInitial extends LayoutState {
  const LayoutInitial(List<Color> colors) : super(colors);

  @override
  List<Object?> get props => colors;

  @override
  String toString() {
    return "LayoutInitial {colors: $colors";
  }
}

class LayoutInProgress extends LayoutState {
  const LayoutInProgress(List<Color> colors) : super(colors);

  @override
  String toString() {
    return "LayoutInProgress {colors: $colors";
  }

  @override
  List<Object?> get props => colors;
}
