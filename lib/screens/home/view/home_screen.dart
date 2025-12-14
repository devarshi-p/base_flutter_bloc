import 'package:base_flutter_bloc/base/component/base_bloc.dart';
import 'package:base_flutter_bloc/base/component/base_event.dart';
import 'package:base_flutter_bloc/base/component/base_state.dart';
import 'package:base_flutter_bloc/base/page/base_page.dart';
import 'package:base_flutter_bloc/screens/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BasePage {
  const HomeScreen({super.key});

  @override
  BasePageState<HomeScreen, HomeBloc> get getState => _HomeScreenState();
}

class _HomeScreenState extends BasePageState<HomeScreen, HomeBloc> {

  @override
  Widget buildWidget(BuildContext context) {
    return Container(color: Colors.red);
  }
}
