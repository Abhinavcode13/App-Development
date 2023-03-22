import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String buttonName ='Click';
int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title : const Text('App title'),
        ),
        body : Center(
          child : Column(children: [ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Color.fromARGB(255, 54, 244, 54),
              primary  :   Colors.orange,
            ),
            onPressed: (){
              setState(() {
                buttonName='Clicked';
              });
            }, 
            child :Text(buttonName)
            )],),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items : const [
            BottomNavigationBarItem(
              label : 'Home',
              icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                label : 'Settings',
                icon: Icon(Icons.settings)
                )
          ],
          currentIndex: currentIndex,
          onTap: (int index){
setState(() {
  currentIndex = index;
});
          },
        ),
      ),
    );
  }
}