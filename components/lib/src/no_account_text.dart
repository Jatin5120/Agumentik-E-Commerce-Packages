import 'package:constants/constants.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
