import 'package:flutter/material.dart';
import 'package:onboarding_flutter/authentication/login/cubit/login_cubit.dart';
import 'package:onboarding_flutter/authentication/login/widgets/password_input.dart';
import 'package:onboarding_flutter/authentication/login/widgets/username_input.dart';
import 'package:onboarding_flutter/shared/widgets/primary_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loading = context.select((LoginCubit cubit) => cubit.state.loading);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo.png',
              height: 180,
            ),
            SizedBox(height: 10),
            UsernameInput(),
            SizedBox(height: 10),
            PasswordInput(),
            SizedBox(height: 20),
            LoginButton()
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginCubit = BlocProvider.of<LoginCubit>(context);
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state.loading)
        return Center(
          child: CircularProgressIndicator(),
        );
      if (!state.loading)
        return PrimaryButton(
          onPress: state.isValidPassword && state.isValidUsername
              ? () {
                  Navigator.pushReplacementNamed(context, 'game_list');
                }
              : null,
          text: 'Ingresar',
          iconData: Icons.forward,
        );
      return Container();
    });
  }
}
