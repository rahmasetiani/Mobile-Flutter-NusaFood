import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/bloc/login/login_cubit.dart';
import 'package:flutter_app/bloc/register/register_cubit.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/pages/log_in.dart';
import 'package:flutter_app/pages/sign_up.dart';
import 'package:flutter_app/pages/utama.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit())
      ],
      child: MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        navigatorKey: NAV_KEY,
        onGenerateRoute: generateRoute,
        home: Utama(),
      ),
    );
  }
}
