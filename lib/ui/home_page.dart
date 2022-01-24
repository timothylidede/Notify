
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:notify/services/notification_services.dart';
import 'package:notify/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var notifyHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestIOSPermissions();
  }

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
          ThemeServices().switchTheme();
        },
        child: const Icon(Icons.nightlight_round,
        size: 20,),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage(
            "images/pp.png"
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}
