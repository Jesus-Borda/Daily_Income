import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.all(20),
      child: Card(
        
        child: TableCalendar(
          locale: 'es_Es',       
          firstDay: DateTime.utc(2020, 01, 01),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: DateTime.now(),
          
        ),
      ),
    );
  }
}
