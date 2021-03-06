import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/theme.dart';
import '../../widget/auth_button.dart';
import '../../widget/auth_text_field.dart';
import '../../widget/check_widget.dart';
import '../../widget/down_container.dart';
import '../../widget/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
            elevation: 0,
          ),
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 0, bottom: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                                text: 'SIGN',
                                fontSize: 35,
                                color: Get.isDarkMode ? mainColor : pinkClr,
                                fontWeight: FontWeight.w500,
                                underLine: TextDecoration.none),
                            SizedBox(
                              width: 10,
                            ),
                            TextUtils(
                                text: 'UP',
                                fontSize: 35,
                                color: Get.isDarkMode
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.w500,
                                underLine: TextDecoration.none),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AuthTextFormField(
                          controller: userNameController,
                          validator: (value) {},
                          obscureText: false,
                          hintText: 'User Name',
                          prefixIcon: Get.isDarkMode
                              ? Image.asset('assets/images/user.png')
                              : Icon(
                                  Icons.person,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcon: Text(''),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AuthTextFormField(
                          controller: emailController,
                          validator: (value) {},
                          obscureText: false,
                          hintText: 'Email',
                          prefixIcon: Get.isDarkMode
                              ? Image.asset('assets/images/email.png')
                              : Icon(
                                  Icons.email,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcon: Text(''),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AuthTextFormField(
                          controller: passwordController,
                          validator: (value) {},
                          obscureText: true,
                          hintText: 'Password',
                          prefixIcon: Get.isDarkMode
                              ? Image.asset('assets/images/lock.png')
                              : Icon(
                                  Icons.lock,
                                  color: pinkClr,
                                  size: 30,
                                ),
                          suffixIcon: Text(''),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        CheckWidget(),
                        SizedBox(
                          height: 50,
                        ),
                        Expanded(
                          child: AuthButton(
                            onPressed: () {},
                            text: 'SIGN UP',
                          ),
                        ),
                        SizedBox(
                          height: 55,
                        )
                      ],
                    ),
                  ),
                ),
                DownContainer(
                    text: 'Already have an account?',
                    onPressed: () {},
                    textType: 'Login')
              ],
            ),
          )),
    );
  }
}
