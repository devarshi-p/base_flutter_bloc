
import 'dart:async';

import 'package:base_flutter_bloc/screens/home/bloc/home_event.dart';
import 'package:base_flutter_bloc/screens/home/bloc/home_state.dart';
import 'package:bloc/src/bloc.dart';

import '../../../base/component/base_bloc.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeEvent>(hello);
  }


  FutureOr<void> hello(HomeEvent event, Emitter<HomeState> emit) {

  }
}