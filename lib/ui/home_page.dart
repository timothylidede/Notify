import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: const [
          Text("Theme Data",
          style: TextStyle(
            fontSize: 30
          ),
          )
        ],
      ),
    );
  }

  _appBar(){
    return AppBar(
      leading: GestureDetector(
        onTap:(){

        },
        child: const Icon(Icons.nightlight_round,
        size: 20,),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}
