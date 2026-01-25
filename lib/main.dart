import 'package:daily__income/src/app.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('es_ES', null);
  runApp( MainApp());
}
