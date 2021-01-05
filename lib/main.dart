import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding_flutter/authentication/login/cubit/login_cubit.dart';
import 'package:onboarding_flutter/authentication/repository/user_repository.dart';
import 'package:onboarding_flutter/routes.dart';

void main() => runApp(OnboardingApp());

class OnboardingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit(new UserRepositoryImpl())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'login',
        routes: routes,
      ),
    );
  }
}
