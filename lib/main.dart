import 'package:basic_bloc/app.dart';
import 'package:basic_bloc/src/blocs/blocs.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = BlocEcommerceObserver();

  runApp(BlocEcommerceApp());
}
