import 'package:meta/meta.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}

class SplashEnd extends SplashState {}