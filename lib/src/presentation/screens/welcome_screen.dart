import 'package:basic_bloc/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../widgets/exports.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Let's Get Started", style: theme.textTheme.titleLarge),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlutterSocialButton(
                  onTap: () {},
                  buttonType:
                      ButtonType
                          .facebook, // Button type for different type buttons
                ),
                FlutterSocialButton(
                  onTap: () {},
                  buttonType:
                      ButtonType
                          .twitter, // Button type for different type buttons
                ),
                FlutterSocialButton(
                  onTap: () {},
                  buttonType:
                      ButtonType
                          .google, // Button type for different type buttons
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.pushNamed(Routes.LOGIN_ROUTE),
                    child: Text(
                      "SignIn",
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(15),
              FullWidthButton(
                onTap: () => context.pushNamed(Routes.REGISTER_ROUTE),
                title: "Create An Account",
              )
            ],
          ),
        ],
      ),
    );
  }
}
