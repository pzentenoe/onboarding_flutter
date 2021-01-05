import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding_flutter/authentication/login/cubit/login_cubit.dart';

class UsernameInput extends StatefulWidget {
  @override
  _UsernameInputState createState() => _UsernameInputState();
}

class _UsernameInputState extends State<UsernameInput> {
  TextEditingController usernameController;
  LoginCubit loginCubit;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    loginCubit = BlocProvider.of<LoginCubit>(context);

    usernameController.addListener(() {
      loginCubit.usernameChanged(usernameController.text);
    });
  }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 0.3),
      ),
      child: TextFormField(
        controller: usernameController,
        decoration:
            InputDecoration(hintText: "Username", border: InputBorder.none),
      ),
    );
  }
}
