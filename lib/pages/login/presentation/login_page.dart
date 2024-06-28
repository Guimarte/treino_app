import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:treino_app/core/shared/utils/colors_app.dart';
import 'package:treino_app/core/shared/widgets/google_login_button_widget.dart';
import 'package:treino_app/core/shared/widgets/head_login_page.dart';
import 'package:treino_app/core/shared/widgets/logo_widget.dart';
import 'package:treino_app/core/shared/widgets/name_widget.dart';
import 'package:treino_app/core/shared/widgets/principal_button.dart';
import 'package:treino_app/core/shared/widgets/register_button.dart';
import 'package:treino_app/core/shared/widgets/text_field_email.dart';
import 'package:treino_app/core/shared/widgets/text_field_password.dart';
import 'package:treino_app/pages/login/bloc/login_bloc.dart';
import 'package:treino_app/pages/login/bloc/login_event.dart';
import 'package:treino_app/pages/login/bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HeadLoginPage(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6), topRight: Radius.circular(6)),
                color: ColorsApp.backgroundColor,
              ),
            ),
          ),
          BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state is LoginSucessState) {
                Navigator.pushNamed(context, '/home');
              }
              if (state is LoginErrorState) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Erro ao Logar'),
                        content: Text(state.error),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                });
              }
            },
            builder: (context, state) {
              if (state is LoginInitialState || state is LoginErrorState) {
                return Positioned(
                  bottom: MediaQuery.sizeOf(context).width * 0.4,
                  left: 60,
                  right: 60,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const LogoWidget(),
                        const NameWidget(),
                        TextFieldEmail(
                          textEditingController: emailController,
                        ),
                        TextFieldPassword(
                          textEditingController: passwordController,
                          hideText: true,
                          icon: Icons.remove_red_eye,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RegisterButton(),
                          ],
                        ),
                        PrincipalButton(
                            function: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            nameButton: "Login"),
                        GoogleLoginButtonWidget(
                          function: () {
                            context.read<LoginBloc>().add(LoginGoogleEvent());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }
              if (state is LoginLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
