
import 'package:flutter/material.dart';

String generateCountryFlag() {
  String countryCode = 'eg';

  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}

void showProgressIndicator(BuildContext context){
  AlertDialog alertDialog = const AlertDialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content:  Center(
      child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.black)
      ),
  )
  );
  showDialog(
    barrierColor: Colors.white.withOpacity(0),
      context: context,
      builder: (context){
        return alertDialog;
      }
  );
}