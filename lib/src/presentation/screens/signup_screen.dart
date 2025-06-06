import 'package:basic_bloc/src/blocs/blocs.dart';
import 'package:basic_bloc/src/presentation/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),

            BlocBuilder<SignupBloc, SignupState>(builder: (context, state){
              if(state is SignupInitial){
                return Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: state.usernameController,
                        decoration: InputDecoration(
                          label: Text("Username"),
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.outlineVariant,
                          ),
                        ),
                        validator: (value){
                          if(value == '' || value == null){
                            return "Username is required";
                          }else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: state.emailController,
                        decoration: InputDecoration(
                          label: Text("Email"),
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.outlineVariant,
                          ),
                        ),
                        validator: (value){
                          if(value == '' || value == null){
                            return "Email is required";
                          }else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                        controller: state.passwordController,
                        decoration: InputDecoration(
                          label: Text("Password"),
                          labelStyle: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.outlineVariant,
                          ),
                        ),
                        validator: (value){
                          if(value == '' || value == null){
                            return "Password is required";
                          }else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                );
              }else{
                return Container();
              }
            }),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Remember me", style: theme.textTheme.labelMedium),
                BlocBuilder<RememberSwitchCubit, RememberSwitchState>(
                  builder: (context, state) {
                    return Switch(
                      value:
                          state is RememberSwitchChanged ? state.value : true,
                      onChanged:
                          (value) => context
                              .read<RememberSwitchCubit>()
                              .switchToggle(value),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: FullWidthButton(title: "Sign Up", onTap: (){
        if(formKey.currentState!.validate()){

        }
      },),
    );
  }
}
