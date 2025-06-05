import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullWidthButton extends StatelessWidget {
  const FullWidthButton({super.key, this.onTap, this.backGroundColor, this.textColor, required this.title} );
  final void Function()? onTap;
  final Color? backGroundColor;
  final Color? textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80.h,
        color: backGroundColor ?? theme.colorScheme.onPrimaryContainer,
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.labelLarge?.copyWith(
              color: textColor ?? theme.colorScheme.onSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
