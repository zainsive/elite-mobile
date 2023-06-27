import 'package:elite_commerce/common/helpers/warning_helper.dart';
import 'package:elite_commerce/common/widgets/buttons/k_button.dart';
import 'package:elite_commerce/common/widgets/text_fields/k_passwordField.dart';
import 'package:elite_commerce/common/widgets/text_fields/k_textField.dart';
import 'package:elite_commerce/custom/color.dart';
import 'package:elite_commerce/custom/styles.dart';
import 'package:elite_commerce/common/widgets/header/k_authHeader.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();

  Future<void> submitForm() async {
    if (email.text.isNotEmpty &&
        email.text.isNotEmpty &&
        name.text.isNotEmpty) {
    } else {
      showWarning(
        msg: 'Required All Fields!',
      );
    }
  }

  showWarning({required String msg}) {
    Navigator.pop(context);
    WarningHelper().kSnackBar(
      msg: msg,
      ctx: context,
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
                        'Create an\nAccount',
                        style: kBlackStyle.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      KTextField(
                        title: 'Full Name',
                        controller: name,
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
                      KButton(
                        onTap: () {
                          WarningHelper().kLoadingDialog(ctx: context);
                          submitForm();
                        },
                        title: 'Register',
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
                              "Already have an account?",
                              style: kBlackStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                  kMainColor.withOpacity(0.5),
                                ),
                              ),
                              child: Text(
                                'Sign in',
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
