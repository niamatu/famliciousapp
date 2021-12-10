import 'package:famliciousapp/views/home_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FamliciousApp());
  
}
class FamliciousApp extends StatelessWidget {
  const FamliciousApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Famlicious App",
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
    ),
    home:HomeView() ,  
    );
  }
}