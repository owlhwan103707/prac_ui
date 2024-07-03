import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget
{
  //바뀌어야할 변수들 옵션들!!
  final String text;
  final Color bgcolor;
  final Color textColor;

  const Button({super.key, required this.text, required this.bgcolor, required this.textColor});
//여기까지가 그 선언


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bgcolor,borderRadius: BorderRadius.circular(45)),

      child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 45),
        child: Text(text,style: TextStyle(color: textColor,fontSize: 20),),),
    );
  }
}