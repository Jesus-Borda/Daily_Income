import 'package:flutter/material.dart';
import 'widget/custom_app_bar.dart';
import 'widget/cards.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),

        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Cards(
                backColor: Color(0xFF3FA681),
                backColorIcon: Color(0xFF65b89a),
                iconbt: Icon(Icons.attach_money_outlined),
                title: Text(
                  "Total Income",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                txCentral: Text(
                  "\$2500",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Cards(
                backColor: Color(0xFF10b981),
                backColorIcon: Color(0xFF40c79a),
                iconbt: Icon(Icons.emoji_events),
                title: Text("Goal Met", style: TextStyle(fontSize: 14, color: Colors.white)),
                txCentral: Text("\$1500",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
              ),
              Cards(
                backColor: Color.fromARGB(255, 231, 231, 231),
                backColorIcon: Color.fromARGB(255, 194, 194, 213),
                iconbt: Icon(Icons.trending_up, color: Colors.black),
                title: Text("Daily Average", style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 0, 0, 0))),
                txCentral: Text("\$200",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
