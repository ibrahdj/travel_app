import 'package:travel_app/cubit/app_cubit_states.dart';
import 'package:travel_app/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcameState());
  }
  final DataServices data;
  void getData() {
    try {
      emit(LoadingState());
    } catch (e) {}
  }
}
