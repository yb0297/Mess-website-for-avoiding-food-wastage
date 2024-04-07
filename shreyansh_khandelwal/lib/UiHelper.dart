import 'package:flutter/cupertino.dart';
import 'package:quickalert/quickalert.dart';



class UiHelper{
  static showAlertBox(BuildContext context,QuickAlertType type,String text ){
    return QuickAlert.show(context: context, type: type,text: text);
  }
}
