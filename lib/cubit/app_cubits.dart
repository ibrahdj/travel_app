// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:bloc/bloc.dart';
import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/model/data_model.dart';
import '../services/data_services.dart';

// import 'package:travel_app/services/data_services.dart';
//{required this.data}
class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfos();
      emit(LoadedState(places));
    } catch (e) {}
  }

  DetailPage(DataModel data) {
    emit(DetailState(data));
  }
}
