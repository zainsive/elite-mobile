import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_button.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_googleBtn.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_header.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_passwordField.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_textField.dart';
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
          const KHeader(),
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 300,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
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
                      'Sign in continue.',
                      style: kBlackStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    KTextField(
                      title: 'example@gmail.com',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    KPasswordField(
                      controller: TextEditingController(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xffDCDCDC),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Or',
                              style: kGreyStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xffDCDCDC),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const KGoogleButton(),
                    const SizedBox(
                      height: 20,
                    ),
                    KButton(
                      onTap: () {},
                      title: 'DIVE IN',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: kBlackStyle.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                kMainColor.withOpacity(0.5),
                              ),
                            ),
                            child: Text(
                              'Sign Up',
                              style: kGreenStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
