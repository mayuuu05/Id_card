import 'package:flutter/material.dart';
import 'package:id_card/Screens/card.dart';
import 'package:id_card/Screens/form.dart';

void main()
{
  runApp(UserId());
}
class UserId extends StatelessWidget {
  const UserId({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes:{
          '/': (context) => FormPage(),
          '/card': (context) => CardPage(),
        
        }
    );
  }
}
