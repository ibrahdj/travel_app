import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
                SizedBox(height: 40,),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(text: "Discover"),
                )
                 SizedBox(height: 30,),
                 Container(
                  child: TabBar(
                    tabs:[
                      Tab(text: "places"),
                      Tab(text:"Inscription"),
                      Tab(text:"Emotion" ),
                    ] 
                  ),
                 )

                
              ],
            ),
          )
        ],
      ),
    );
  }
}
