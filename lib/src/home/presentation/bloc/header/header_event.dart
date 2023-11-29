part of 'header_bloc.dart';

sealed class HeaderEvent extends Equatable {
  const HeaderEvent();

  @override
  List<Object> get props => [];
}

class ToggleThemeEvent  extends HeaderEvent {
  const ToggleThemeEvent ({required this.valor});
  final String valor;
}