import 'package:flutter/material.dart';
import 'package:onboarding_flutter/authentication/login/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.3),
      ),
      child: TextFormField(
        obscureText: true,
        onChanged: (value) {
          context.read<LoginCubit>().passwordChanged(value);
        },
        decoration: InputDecoration(
          hintText: "Password",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
