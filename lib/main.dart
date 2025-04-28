import 'package:doc_doc/core/di/getit_service_loacator.dart';
import 'package:doc_doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/observer_bloc.dart';
import 'core/services/shared_preferences_service.dart';

void main() async {
  setup();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService.init();

  Bloc.observer = MyBlocObserver();
  // Initialize any other services or configurations here if needed
  runApp(const DocApp());
}
