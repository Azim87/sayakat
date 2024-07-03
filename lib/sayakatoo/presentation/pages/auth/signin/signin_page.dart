import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sayakatoo/sayakatoo/config/di/app_module.dart';
import 'package:sayakatoo/sayakatoo/presentation/pages/auth/signin/signin_cubit.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _cubit = getIt<SigninCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.goNamed('signup'),
        label: Text('Sign Up'),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: 'email'),
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(hintText: 'password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
