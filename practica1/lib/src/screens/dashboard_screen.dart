import 'package:flutter/material.dart';
import 'package:practica1/src/utils/color_settings.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('DASHBOARD'),
        backgroundColor: ColorSettings.colorPrimary,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('ISC. Ramón Gómez'),
                accountEmail: Text('ramon1998pxndx@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg'),
                  child: Icon(Icons.verified_user),
                ),
              decoration: BoxDecoration(
                color: ColorSettings.colorPrimary
              ),
            ),
            ListTile(
              title: Text('Propinas'),
              subtitle: Text('Aqui podra calcular las propinas'),
              leading: Icon(Icons.monetization_on_outlined),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/opc1');
              },
            ),
            ListTile(
              title: Text('Intenciones'),
              subtitle: Text('Intenciones implicitas'),
              leading: Icon(Icons.phone_android),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/intenciones');
              },
            )
          ],
        ),
      ),
    );
  }
}

