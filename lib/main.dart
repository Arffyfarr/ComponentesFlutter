import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alertpage.dart';
import 'package:componentes/src/pages/avatarpage.dart';
import 'package:componentes/src/pages/homepagetemp.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // Se ejecutará este código si no se encuentra una ruta específica
        // Para saber el nombre de la ruta que se llamo se usa el settings.name
        print('La ruta no encontrada es ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext builder) => AlertPage());
        /*Aquí podríamos tomar una decisión dependiendo del name y realizar cualquier acción como por ejemplo, que valide algo y mandarlo a una pantalla en particular → Queremos mandarlo a la página de Alertas */
      },
    );
  }
}
