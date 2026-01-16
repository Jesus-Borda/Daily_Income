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
                  title: "Total Income",
                  txCentral: "\$2500",
                ),
                Cards(
                  backColor: Color(0xFF10b981),
                  backColorIcon: Color(0xFF40c79a),
                  iconbt: Icon(Icons.abc_outlined),
                  title: "Goal",
                  txCentral: "\$1500",
                ),        
            ],
          ),
        ),
      ),
    );
  }
}
