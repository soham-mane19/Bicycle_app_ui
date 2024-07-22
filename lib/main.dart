import 'package:bicycleapp/MainApp.dart';
import 'package:bicycleapp/cart.dart';
import 'package:bicycleapp/datail_screen.dart';
import 'package:bicycleapp/homeScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});
@override
Widget build(BuildContext context){
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
       primaryColor: const Color.fromRGBO(36, 44, 59, 1),
colorScheme: ColorScheme.fromSwatch().copyWith(
  secondary:const  Color.fromRGBO(75, 76, 237, 1)
)
    ),
    routes: {
      '/home':(context) =>  const HomeScreen(),
      '/detail':(context)=> const Datail(),
      '/cart':(context) => const cart(),
    },
    home: const  MainApp(),

   );

}


}
