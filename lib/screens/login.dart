import 'package:flutter/material.dart';
import 'package:login_ui/components/account_button.dart';
import 'package:login_ui/components/forgot_password_remember.dart';
import 'package:login_ui/components/git_buttons.dart';
import 'package:login_ui/components/sign_in_up_buttons.dart';
import 'package:login_ui/components/title_subtitle.dart';
import 'package:login_ui/constants/assets.dart';
import 'package:login_ui/constants/sizedBox.dart';
import 'package:login_ui/constants/strings.dart';
import 'package:login_ui/screens/register.dart';
import 'package:login_ui/widgets/divider.dart';
import 'package:login_ui/widgets/label_texts.dart';
import 'package:login_ui/widgets/textField_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                  child: Image.asset(logoPath, height: screenSize.height / 4)),
              MyHeights.medium.toHeight(),
              const TitleSubtitleWidget(
                title: loginTitle,
                subtitle: loginSubtitle,
              ),
              MyHeights.medium.toHeight(),
              const LabelText(label: email),
              TextFieldComponent(
                controller: emailController,
                hintText: enterEmail,
              ),
              MyHeights.medium.toHeight(),
              const LabelText(label: password),
              TextFieldComponent(
                controller: passwordController,
                hintText: enterPassword,
              ),
              MyHeights.small.toHeight(),
              ForgotPasswordRememberMe(
                value: false,
              ),
              MyHeights.medium.toHeight(),
              LoginSignUpButton(
                onPressed: () {},
                child: login,
              ),
              MyHeights.medium.toHeight(),
              const DividerWidget(),
              MyHeights.small.toHeight(),
              const GitButtons(),
              MyHeights.large.toHeight(),
              AccountButton(
                text: doNotHaveAcc,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen())),
                text2: signUp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
