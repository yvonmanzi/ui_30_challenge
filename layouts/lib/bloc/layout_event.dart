part of 'layout_bloc.dart';

@immutable
abstract class LayoutEvent extends Equatable {
  const LayoutEvent();
}

class ButtonPressed extends LayoutEvent {
  final ValueKey key;
  const ButtonPressed({required this.key});

  @override
  List<Object?> get props => [key];
}
