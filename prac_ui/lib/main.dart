import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:prac_ui/button.dart';
import 'package:prac_ui/card.dart';

class Player
{
  //String name = 'nico';
  String name;
  Player({required this.name});

}

void main()
{
  var nico = Player(name: "ji hwan");

  runApp( App() );
}


//이게 내 앱의 시작점 뿌리다
class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      home:Scaffold(
        backgroundColor: const Color(0xFF181818),
        body:SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text('Hey, 오지환',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800),),
                        Text('Welcome back',style: TextStyle(color: Colors.white70,fontSize: 18,),),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 50,),//그냥 간격을 위해서 넣음 //welcome back밑의 사이즈 박스
                const Text('Total Balance',style:TextStyle(color: Colors.white70,fontSize: 22,) ,),
                const SizedBox(height: 5,), //그냥 간격을 위해서 넣음 -> total balance 밑의 사이즈 박스
                const Text('\$5 194 382',style:TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.w600) ,),
                const SizedBox(height: 15,), //그냥 간격을 위해서 넣음 -> $ 1 000 000밑의 사이즈 박스
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'transfer', bgcolor: Colors.amber, textColor: Colors.white), //버튼 클래스 만들어서 가져오기 button.dart
                    Container(
                      decoration: BoxDecoration(color: Color(0xFF1F2123),borderRadius: BorderRadius.circular(45)),

                      child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 45),
                        child: Text('request',style: TextStyle(color: Colors.white,fontSize: 20),),),
                    ),//이게 그냥 버튼 위젯 만들어서 작성한거
                  ],
                ),
                const SizedBox(height: 65,),//Transfer request 밑에 박스
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Wallet',style: TextStyle(color: Colors.white,fontSize:36,fontWeight:FontWeight.w600 ),),
                    Text('View all',style: TextStyle(color: Colors.white70,fontSize:18 ),),
                  ],
                ),


                SizedBox(height: 15,),//Wallet과 view all 밑의 박스



                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Color(0xFF1F2123),
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
                            Text('Euro',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Row(

                              children: [
                                Text('6 428',style:TextStyle(color: Colors.white,fontSize: 20) ,),
                                SizedBox(width: 10,),
                                Text('EUR',style:TextStyle(color: Colors.white70,fontSize: 20),),
                              ],
                            ),
                          ],
                        ),

                        Transform.scale(scale: 2.2,child: Transform.translate(
                          offset: const Offset(-5, 12),
                          child: Icon(Icons.euro_rounded,color: Colors.white,size: 88,),
                        ),),


                      ],
                    ),
                  ),
                ),//Euro 컨테이너 이게 기본코드

                //이 밑의 코드들은 클래스화를 시켜서 만든 애들

                card(name: 'Bitcoin', code: 'BTC', amount: '9 785', icon: CupertinoIcons.bitcoin,isInverted: true,offset: -20,),


                card(name: 'Dollor', code: 'USD', amount: '428', icon:Icons.attach_money_outlined,isInverted: false,offset: -40,),






              ],
            ),
          ),
        ),
      ),
    );


  }
}