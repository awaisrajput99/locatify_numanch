import 'package:flutter/material.dart';
import 'package:locatify/src/constants/sizes.dart';

import '../../../../common_widgets/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
              //header
              FormHeaderWidget(
                image: MdImages.mdWelcome,
                size: size, title: "Welcome Back,",subtitle: "Bringing lost items and loved ones home",),
              //Form
              LoginFormWidget(size: size),
              //Footer
              LoginFooterWidget(size: size)
            ],
          ),
        ),
      ),
    );
  }
}


