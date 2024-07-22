import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Datail extends StatefulWidget {
  const  Datail({super.key});

  @override
  State<Datail> createState() => _DatailState();
}

class _DatailState extends State<Datail> {
   bool description = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).colorScheme.secondary,
            ],
            stops: const [0.5, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
     child:   Column(
       children: [
         Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'GT BIKE',
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1)),
                          ),
                         
                        ])),
                        const Spacer(),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(72, 92, 236, 1),
                                Color.fromRGBO(75, 76, 237, 1),
                              ])),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 30,
                            weight: 30,
                          ),
                        ),
                      ],
                    ),
           const SizedBox(
             height: 40,
           ),
           Container(
             child: Image.asset("assets/datail.png"),
           ),
           
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
          Container(
            height: 10,
            width: 10,
            decoration:const  BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(0, 0, 0, 1)
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 10,
            width: 10,
            decoration:const  BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(217, 217, 217, 1)
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 10,
            width: 10,
            decoration:const  BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(217, 217, 217, 1)
            ),
          ),
          
             ],
           ),
           const SizedBox(
             height: 20,
           ),
          
         
                  ]
                )
                ),
          Container(
              height: 242,
              padding:const  EdgeInsets.all(20),
             width: double.infinity,
               decoration:const  BoxDecoration(
                       border: Border(top: BorderSide(width: 2,color:Color.fromRGBO(255, 255, 255, 0.2 ),),left: BorderSide(width: 2,color:Color.fromRGBO(255, 255, 255, 0.2 ),),right: BorderSide(width: 2,color:Color.fromRGBO(255, 255, 255, 0.2 ),)),
                       borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                       gradient:  LinearGradient(
              colors: [
                Color.fromRGBO(53, 63, 84, 0.8),
                Color.fromRGBO(34, 40, 52, 0.8)
              ]
                       )
               ),
               child:  Column(
                 children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          description = true;

                        });
                      },
                      child: Container(
                        height: 35,
                        width: 106,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color:const  Color.fromRGBO(255, 255, 255, 0.5)),
                          borderRadius: BorderRadius.circular(20),
                          color: description?const Color.fromRGBO(72, 92, 236, 1):const Color.fromRGBO(36, 44, 59, 1)
                        ),
                        child: Text("Description", style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:const Color.fromRGBO(255, 255, 255, 1)),),
                      ),
                    ),
                 const Spacer(),
                    GestureDetector(
                    onTap: () {
                      setState(() {
                        description = false;
                      });
                    },
                      child: Container(
                        height: 35,
                        width: 106,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color:const  Color.fromRGBO(255, 255, 255, 0.5)),
                          borderRadius: BorderRadius.circular(20),
                     color: description?const Color.fromRGBO(36, 44, 59, 1):const Color.fromRGBO(72, 92, 236, 1),

                        ),
                        child: Text("Specification", style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:const Color.fromRGBO(255, 255, 255, 1)),),
                      ),
                    ),
                  ],
                ),
                 const SizedBox(
                  height: 25,
                 ),
                   Text("Lorem ipsum dolor sit amet. Ab tenetur molestias vel rerum cupiditate qui dolores consequatur et asperiores sunt ea magnam dolorem qui consectetur omnis. Ut error voluptas qui tempora provident aut necessitatibus voluptas rem eveniet nulla ut accusantium dignissimos aut facilis perspiciatis a natus quia.",
                   style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:const Color.fromRGBO(255, 255, 255, 1)),),
               
               
                
                 ],
               ),
             ),
           

            Expanded(
              child: Container(
                     padding: EdgeInsets.all(15),
                      width: double.infinity,
                      decoration:const  BoxDecoration(
                      color: Color.fromRGBO(36, 44, 59, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          blurRadius: 20,
                          spreadRadius: 0,
                          offset: Offset(0, -8)
                        )
                      ]
                      ),
                      child:
                           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$2,599.99",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                     GestureDetector(
                     onTap: () => Navigator.of(context).pushNamed('/cart'),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 187,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                             Color.fromRGBO(75, 76, 237, 1),

                          ])
                        ),
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color:const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                        ],
                      ),
                    ),
            ),
       ]
     ),

       
      
    ),
     
         Positioned(
          top: 320,
          left: 50,
          child: Transform.rotate(
            angle: 1.5708,
            child: Text(
              "EXTREME",
              style: GoogleFonts.allertaStencil(
                  fontSize: 130,
                  fontWeight: FontWeight.w400,
                  color:const Color.fromARGB(9, 255, 255, 255)),
            ),
          ),
        ),
       
   ]
    ), 
    
      );
    
    
  }
}
