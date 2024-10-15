import 'package:flutter/material.dart';

class kemaren extends StatelessWidget {
  const kemaren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            width: 400,
            height: 400,
            // margin: EdgeInsets.only(left:20),
            margin: EdgeInsets.all(20),
            // padding: EdgeInsets.only(left:20)
            padding: EdgeInsets.all(20),

            child: Text(
              "Muhammad, this is the first day i learn flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          // Text(
          Container(
            color: Colors.yellow,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 Container(
                  color: Colors.orange,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.purple,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.blue,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,           
              children: [
                Container(
                  color: Colors.red,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.pink,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
                Container(
                  color: Colors.indigo,
                  child: FlutterLogo(
                    size: 60.0,
                  ),
                ),
              ],
            ),
          )
         
        ],
      ),
    );
  }
}