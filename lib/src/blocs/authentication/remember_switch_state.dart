import 'package:meta/meta.dart';

@immutable
abstract class RememberSwitchState {}

class RememberSwitchInitial extends RememberSwitchState {}

class RememberSwitchChanged extends RememberSwitchState {
  final bool value;
  RememberSwitchChanged(this.value);
}
