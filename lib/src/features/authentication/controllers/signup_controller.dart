import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class MdSignupController extends GetxController{
  static MdSignupController get instance => Get.find();

  //controllers to get data from the textfields
final fullName = TextEditingController();
final email = TextEditingController();
final password = TextEditingController();
final phone = TextEditingController();
final confirmPassword = TextEditingController();

void registerUser(String email, String password){
AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
}

}