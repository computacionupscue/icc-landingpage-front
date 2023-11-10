import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<GetDataEvent>(_onGetEvent);
  }

  FutureOr<void> _onGetEvent(
      GetDataEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());

    await Future.delayed(const Duration(seconds: 3));

    emit(HomeLoaded(valor: event.valor));
  }
}
