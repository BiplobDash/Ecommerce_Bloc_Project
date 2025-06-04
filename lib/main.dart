import 'package:basic_bloc/app.dart';
import 'package:basic_bloc/src/blocs/blocs.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = BlocEcommerceObserver();
  runApp(BlocEcommerceApp());
}
