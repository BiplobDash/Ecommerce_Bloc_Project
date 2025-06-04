import 'package:basic_bloc/src/blocs/splash/splash_state.dart';
import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<SplashState>{
  SplashCubit() : super(SplashInitial());

  void startSplash(){
    Future.delayed(const Duration(seconds: 2),(){
      emit(SplashEnd());
    });
  }
}