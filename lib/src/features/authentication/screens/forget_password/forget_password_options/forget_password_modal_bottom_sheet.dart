import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import 'forget_password_option_selection_widget.dart';

class ForgetPasswordModalBottomSheet{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          padding:
          const EdgeInsets.symmetric(horizontal: MdSizes.mdDefaultPadding, vertical: MdSizes.mdDefaultPadding+15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Make Selection!",
                style: TextStyle(
                  fontSize: 30,),
              ),
              const Text("Select one of the options given below to reset your password.",style: TextStyle(fontSize: 16,),),
              SizedBox(height: size.height*0.02,),
              ForgetPasswordOptionSelctionWidget(
                btnIcon: Icons.mail_outline_rounded,
                title: "Email",
                subtitle: "Reset via mail verification",
                onTap: (){
                  Get.toNamed("/forgetPasswordMailScreen");
                },
              ),
              SizedBox(height: size.height*0.01,),
              ForgetPasswordOptionSelctionWidget(
                btnIcon: Icons.phone_iphone_outlined,
                title: "Phone",
                subtitle: "Reset via phone verification",
                onTap: (){
                  Get.toNamed("/forgetPasswordPhoneScreen");

                },
              ),

            ],
          ),
        ));
  }

}