import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: kMainColor,
            height: 400,
          ),
          Container(
            margin: const EdgeInsets.only(top: 300),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: Color(0xffF8F8F8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
            ),
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome Back!',
                  style: kBlackStyle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign in continue!',
                  style: kBlackStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CupertinoTextField(
                  placeholder: 'example@gmail.com',
                  placeholderStyle: kGreyStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: const Color(0xffDEDEDE),
                      width: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
