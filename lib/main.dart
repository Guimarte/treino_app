import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treino_app/core/shared/utils/theme_app.dart';
import 'package:treino_app/firebase_options.dart';
import 'package:treino_app/pages/form_exercise/bloc/form_exercise_bloc.dart';
import 'package:treino_app/pages/form_exercise/presentation/form_exercise_page.dart';
import 'package:treino_app/pages/home/bloc/home_bloc.dart';
import 'package:treino_app/pages/home/bloc/home_event.dart';
import 'package:treino_app/pages/home/presentation/home_page.dart';
import 'package:treino_app/pages/login/bloc/login_bloc.dart';
import 'package:treino_app/pages/login/presentation/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeApp().themeData,
      initialRoute: '/login',
      routes: {
        '/home': (_) => BlocProvider(
              create: (_) => HomeBloc()..add(HomeLoadListEvent()),
              child: const HomePage(),
            ),
        '/form': (_) => BlocProvider(
              create: (_) => FormExerciseBloc(),
              child: FormExercisePage(),
            ),
        '/login': (_) => BlocProvider(
              create: (context) => LoginBloc(),
              child: LoginPage(),
            )
      },
    );
  }
}
