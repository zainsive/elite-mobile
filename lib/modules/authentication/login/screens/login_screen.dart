import 'package:elite_commerce/common/helpers/warning_helper.dart';
import 'package:elite_commerce/common/widgets/buttons/k_button.dart';
import 'package:elite_commerce/modules/authentication/login/widgets/k_googleBtn.dart';
import 'package:elite_commerce/common/widgets/text_fields/k_passwordField.dart';
import 'package:elite_commerce/common/widgets/text_fields/k_textField.dart';
import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:elite_commerce/common/widgets/header/k_authHeader.dart';
import 'package:elite_commerce/utils/router/router_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  Future<void> submitForm() async {
    if (email.text.isNotEmpty && email.text.isNotEmpty) {
      Future.delayed(const Duration(seconds: 2)).whenComplete(() {
        showWarning(
          msg: 'Successfully Login!',
          color: Colors.green,
        ).whenComplete(() => context.goNamed(MyRouterConstants.homeRoute));
      });
    } else {
      showWarning(
        msg: 'Required All Fields!',
      );
    }
  }

  Future<void> showWarning({required String msg, Color? color}) async {
    Navigator.pop(context);
    WarningHelper().kSnackBar(
      msg: msg,
      ctx: context,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const KHeader(),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: ListView(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
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
                        controller: email,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KPasswordField(
                        controller: password,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                        onTap: () {
                          WarningHelper().kLoadingDialog(ctx: context);
                          submitForm();
                        },
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
                              "Don't have an account?",
                              style: kBlackStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context
                                    .goNamed(MyRouterConstants.registerRoute);
                              },
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
          ),
        ],
      ),
    );
  }
}
