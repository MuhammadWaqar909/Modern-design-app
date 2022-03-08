import 'package:bloc/bloc.dart';
import 'package:modern_design_app/Cubit/app_cubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits(initialState) : super(InitialState()) {
    emit(WelcomeState());
  }
}
