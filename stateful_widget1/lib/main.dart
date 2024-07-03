import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});



  @override
  State<App> createState() => _AppState();
}




class _AppState extends State<App> {
  bool showTitle = true ; //dispose용 변수
  void toggleTitle()  //dispose용
  {
    setState(() {
      showTitle = !showTitle;
    });
  }

  List <int> numbers = [];

  // void onClicked()
  // {
  //   setState(() { //데이터가 변경 됐다고 알리는 함수
  //    //카운트용 코드/counter += 1;
  //     numbers.add(numbers.length);
  //   });
  //
  // }
  // int counter = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme:ThemeData(
          textTheme: TextTheme(
            titleLarge:  TextStyle(color: Colors.red,),
          )
      ) ,


      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? MyLargeTitle() : Text('nothing'),
                IconButton(onPressed: toggleTitle, icon: Icon(Icons.access_time_filled_sharp)),
                //counter용 코드/Text('$counter',style: TextStyle(fontSize: 30),),
                // for(var n in numbers) Text('$n'),
                // IconButton(
                //     iconSize: 40,
                //     onPressed:  onClicked, icon: Icon(Icons.add_box_rounded),),
              ],
            )

        ),
      ),
    );
  }



}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {

  int count =0;
  @override
  void initState() {

    super.initState();
    print('initState');
  }


  @override
  void dispose() {
    super.dispose();
    print('디스포즈');
  }



  @override
  Widget build(BuildContext context) {
    print('initStat123123123e');
    return Text('My Large Title',style: TextStyle(fontSize: 30,
      color: Theme.of(context).textTheme.titleLarge?.color, ),);
  }
}
