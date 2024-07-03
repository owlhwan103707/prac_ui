import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget{

  //바뀌어야할 변수들 옵션들!!
  final String name,code,amount;
  final IconData icon;
  final bool isInverted;
  final double offset;
  final blackcolor = const Color(0xFF1F2123);


  const card({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,

  });
//여기까지가 그 선언



  @override
  Widget build(BuildContext context)
  {
    return Transform.translate(
        offset: Offset(0,offset),
        child:Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white: Color(0xFF1F2123), ///////////////////////// 조건문
            borderRadius: BorderRadius.circular(25),
          ),

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,style: TextStyle(color: isInverted ? blackcolor : Colors.white,
                        fontSize: 32,fontWeight: FontWeight.w600),), //조건문
                    SizedBox(height: 10,),
                    Row(

                      children: [
                        Text(amount,style:TextStyle(color: isInverted ? blackcolor : Colors.white,fontSize: 20) ,),
                        SizedBox(width: 10,),
                        Text(code,style:TextStyle(color: isInverted ? blackcolor : Colors.white70,fontSize: 20),),
                      ],
                    ),
                  ],
                ),



                Transform.scale(scale: 2.2,child: Transform.translate(
                  offset: const Offset(-5, 12),
                  child: Icon(icon,color: isInverted ? blackcolor : Colors.white,size: 88,),
                ),),


              ],
            ),
          ),
        )

    );//Euro 컨테이너
  }
}