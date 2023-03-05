import 'package:amazon_clone_app/constraints/global.dart';
import 'package:amazon_clone_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 10,right: 10,left: 10),
      decoration: const BoxDecoration(gradient: GlobalVariables.appBarGradient),
      child: RichText(
        text:  TextSpan(
            text: 'Hello, ',
            style: const TextStyle(fontSize: 22, color: Colors.black),
        children: [
          TextSpan(
            text: user.name,
            style: const TextStyle(fontSize: 22, color: Colors.black,fontWeight: FontWeight.w600),
          ),
        ]
        ),
      ),
    );
  }
}
