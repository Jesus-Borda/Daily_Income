import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardRegistrationDay extends StatelessWidget {
  final String fechaActual = DateFormat(
    " MMMM d 'del' yyyy",
    'es_ES',
  ).format(DateTime.now());

  CardRegistrationDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Card(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          fechaActual,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "INGRESOS",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 10), 
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on, color: Colors.white),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
          
                    //  border: UnderlineInputBorder(),
                    hintText: "Ingrese el valor",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(194, 255, 255, 255),
                    ),
                    labelText: "Valor",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  maxLines: 3,
                  decoration: InputDecoration(
                    icon: Icon(Icons.description, color: Colors.white),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
          
                    //  border: UnderlineInputBorder(),
                    hintText: "Ingrese una descripción",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(194, 255, 255, 255),
                    ),
                    labelText: "Descripción",
                    
                  ),
                ),
                
              ),
              SizedBox(height: 20),  
              Container(
              
              //  margin: EdgeInsets.fromLTRB(15, 10, 15, 15),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(187, 255, 0, 0),
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Cancelar",style: TextStyle(color: Colors.white),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3FA681),
                      ),
                      onPressed: () {},
                      child: Text("Registrar Ingreso",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
void mostrarCard (BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // cerrar tocando fuera
    
    builder: ( context) {
      return Dialog(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        child: CardRegistrationDay());
    },
  );
}