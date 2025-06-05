import 'package:basic_bloc/src/blocs/authentication/remember_switch_state.dart';
import 'package:bloc/bloc.dart';

class RememberSwitchCubit extends Cubit<RememberSwitchState>{
  RememberSwitchCubit() : super(RememberSwitchInitial());

  void switchToggle(bool value){
      emit(RememberSwitchChanged(value));
  }
}