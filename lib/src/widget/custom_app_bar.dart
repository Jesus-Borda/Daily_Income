import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.0,
      backgroundColor: Color.fromARGB(255, 247, 247, 249),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF3FA681),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    color: Colors.white,
                    icon: Icon(Icons.attach_money_outlined),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Daily Income',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  color: const Color.fromARGB(255, 255, 255, 255),
                  icon: Icon(Icons.add),
                ),
                Text(
                  "Add Today",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}