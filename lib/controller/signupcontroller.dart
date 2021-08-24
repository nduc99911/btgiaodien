import 'package:flutter/material.dart';
import 'package:get/get.dart';
class signupcontroller extends GetxController{
  String ? selectGender;
  final List<String > gender=["Womenswear","Menswear"];
  String ? select;
  final btn1SelectedVal = 'One'.obs;
  var isCheckk=false.obs;
  clickone(valuee){
    btn1SelectedVal.value=valuee;
  }
  void onClickRadionButton(value){
    print(value);
    select=value;
    update();
  }
   ischeckbox(valuee){
    isCheckk.value=valuee!;
    print(isCheckk.value);
  }
}