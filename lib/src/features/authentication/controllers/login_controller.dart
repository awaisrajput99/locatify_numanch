import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class MdLoginController extends GetxController{
  static MdLoginController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();

  void loginUser(String email, String password, BuildContext context){
    AuthenticationRepository.instance.loginUserWithEmailAndPassword(email, password,context);
  }
}