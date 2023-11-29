import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'header_event.dart';
part 'header_state.dart';

class HeaderBloc extends Bloc<HeaderEvent, HeaderState> {
  HeaderBloc() : super(HeaderLightThemeState()) {
    on<ToggleThemeEvent >(_onGetEvent);
  }

  FutureOr<void> _onGetEvent(
      ToggleThemeEvent  event, Emitter<HeaderState> emit) async {
    emit(HeaderDarkThemeState());

    await Future.delayed(const Duration(seconds: 3));

    emit(HeaderLoaded(valor: event.valor));
  }
}
