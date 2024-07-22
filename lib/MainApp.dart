import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class MainApp extends StatelessWidget {
  const MainApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Stack(

        children:[ Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).colorScheme.secondary,
              
            ],
        
          stops:const  [0.5,0.5],
          begin: Alignment.topLeft,
              end: Alignment.bottomRight,
         
            )
          ),
        
        ),
          Positioned(
            top: 50,
            left: 176,
             child: Image.asset("assets/cycleicon.png"),
          ),
           Positioned(
            top: 310,
            left: 50,
            child: Transform.rotate(angle: 1.5708,
            child: Text("EXTREME",style: GoogleFonts.allertaStencil(fontSize:130,fontWeight:FontWeight.w400,color:Color.fromARGB(80, 255, 255, 255)),),
            ),
          ),
          Positioned(
            top: 280,
            left: 10,
            child:Image.asset("assets/homecycle.png") ),

            Positioned(
              top:720,
              left: 130,
              child: GestureDetector(
                onTap: () =>Navigator.pushNamed(context, '/home'),
                child: Container(
                      height: 76,
                      width: 315,
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(38),bottomLeft: Radius.circular(38)),
                        color: Color.fromRGBO(36, 44, 59, 1)
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                          Container(
                            width: 70,
                            height: 70,
                            alignment: Alignment.center,
                            decoration:   BoxDecoration(
                              shape: BoxShape.circle,
                              color:Theme.of(context).colorScheme.secondary,
                         border: Border.all(
                          color:const  Color.fromRGBO(239, 186, 51, 1),
                          width: 4
                         )
                            ),
                          child:const  Icon(Icons.arrow_back_ios,color: Color.fromRGBO(255,255,255,1),),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Get Start",style: GoogleFonts.poppins(fontSize:25,fontWeight:FontWeight.w500,color:const Color.fromRGBO(255, 255, 255, 1)),),
                      ],
                                    ),
                    ),
                  ),
              ))
        ],
      )
      
    );
  }
}