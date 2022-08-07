import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uidesign/providers/rating_provider.dart';
import 'package:uidesign/screens/home.dart';
void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_rating)=>Rating_Provider()),
      ],
      child: MyApp(),

    )
    );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}