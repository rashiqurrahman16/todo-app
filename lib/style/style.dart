
import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label){
  return InputDecoration(
    contentPadding: EdgeInsets.all(18),
    border: OutlineInputBorder(),
    labelText: label,
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.blueAccent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );
}

SizedBox SizeBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}