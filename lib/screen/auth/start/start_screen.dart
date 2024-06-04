import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ultra_menu/cubit/start_cubit/start_cubit.dart';
import 'package:ultra_menu/data/values.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StartCubit(),
      child: BlocBuilder<StartCubit, StartState>(
        builder: (context, state) {
          Timer(const Duration(seconds: 2),
              () => BlocProvider.of<StartCubit>(context).startApp());
          return Scaffold(
            body: Center(
              child: Image.asset("$imageLocalPath/logo.png"),
            ),
          );
        },
      ),
    );
  }
}
