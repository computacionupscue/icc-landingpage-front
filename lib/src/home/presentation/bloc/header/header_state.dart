part of 'header_bloc.dart';

sealed class HeaderState extends Equatable {
  const HeaderState();

  @override
  List<Object> get props => [];
}

final class HeaderLightThemeState extends HeaderState {}

final class HeaderDarkThemeState  extends HeaderState {}

final class HeaderLoaded extends HeaderState {
  const HeaderLoaded({required this.valor});
  final String valor;
}
