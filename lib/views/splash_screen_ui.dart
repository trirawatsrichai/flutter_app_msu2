import 'package:flutter/material.dart';
import 'package:flutter_app_msu2/views/home_ui.dart';
import 'package:flutter_app_msu2/views/show_list_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({ Key? key }) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      ()=>Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context)=>ShowListUI(),
    ),
    ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/fastfood.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  'เปิดโปรแกรมไม่ได้',
                ),
                SizedBox(
                  height: 20.0,
                ),CircularProgressIndicator(
                  color: Colors.red,
                )
              ],
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 50.0,
                ),
                child: Text(
                  'สร้างโดยอี๊ดคนแบกแอก',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}