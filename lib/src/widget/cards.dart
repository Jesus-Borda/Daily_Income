import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
  const Cards({ 
    
    required this.backColor,
    required this.backColorIcon,
    required this.iconbt,
    required this.title,
    required this.txCentral,
    
    this.dwnTx,
    super.key 
  }
  );
  
  final Color backColor ;
  final Color backColorIcon ;
  final Icon iconbt;
  final String title ;
  final String txCentral ;
  final String? dwnTx;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backColor // Color(0xFF3FA681),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: backColorIcon // Color(0xFF65b89a),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    icon: iconbt // Icon(Icons.attach_money_outlined),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(txCentral,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(dwnTx ?? '',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            ),)
        ],
      ),
    );
  }
}
