import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hired_flutter/bloc_observer.dart';
import 'package:hired_flutter/view/home_screen.dart';
import 'package:hired_flutter/injection.dart';
import 'package:hired_flutter/view/cubit/home_cubit.dart';
import 'package:hired_flutter/view/search/cubit/search_cubit.dart';

void main() {
  configureDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
            BlocProvider(
              create: (contex) => getIt<HomeCubit>(),
            ),
            BlocProvider(
              create: (contex) => getIt<SearchCubit>(),
            ),
        ],
              child: MaterialApp(
            title: 'Hired',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: "DMSans"
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
    ));
  }
}