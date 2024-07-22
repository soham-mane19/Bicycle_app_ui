
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const  BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(36, 44, 59, 1),
               Color.fromRGBO(30, 30, 30, 1)
            ],
            stops:  [0.5, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Column(
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
                            text: 'My Shopping Cart',
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
                      height: 20,
                    ),
                    
                    cartitem("assets/cart1.png",'GT Bike',2599.99),
                     const SizedBox(
                      height: 20,
                    ),
                  ]
                )
              ),
              Container(
                width: 430,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color:const  Color.fromRGBO(255, 255, 255, 0.1))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: cartitem("assets/cart2.png",'Helmet',125.99),
              ),
               Container(
                width: 430,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color:const  Color.fromRGBO(255, 255, 255, 0.1))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: cartitem("assets/cart3.png",'Bottle',115.99),
              ),
               Container(
                width: 430,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color:const  Color.fromRGBO(255, 255, 255, 0.1))
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Text("Your Bag Qualifies for Free Shipping",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: const Color.fromRGBO(255, 255, 255, 1))
                                ),
                               
                                Padding(
                                  padding:const  EdgeInsets.all(20),
                                child:
                                Column(
                                  children: [

                                 
                                 Container
                                
                                (
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 2,color:const  Color.fromRGBO(0, 0, 0, 0.3)),
                                    color:const  Color.fromRGBO(36, 44, 59, 0.6)
                                  ),
                               child: Row(
                                children: [
                                  Text("6Affg5",style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(142, 142, 142, 1))
                                ),
                                const Spacer(),
                                Container(
                                  height: 44,
                                  width:137,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient:const  LinearGradient(colors: [
                                      Color.fromRGBO(55, 182, 233, 1),
                                        Color.fromRGBO(75, 76, 237, 1),

                                    ]),

                                    boxShadow:const  [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.25),
                                        blurRadius: 4,
                                      offset: Offset(5, 5)
                                      ),
                                    ]
                                  ),
                                  child: Text("Apply",style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                )
                                ],
                               ),
                               
                                ),

                              const   SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
         Text("Subtotal",style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                   const    Spacer(),
                             Text("\$2,841.99",style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(55, 182, 233, 1))),
                                  
                                  ],
                                ),
                            
                                  
                           
                           
                              const   SizedBox(
                                  height: 5,
                                ),
                             Row(
                                  children: [
 Text("Delivery fee",style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                   const    Spacer(),
                             Text("\$0",style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(55, 182, 233, 1))),
                                  


                                  ],
                                ),
                              const   SizedBox(
                                  height: 5,
                                ),
                              Row(
                                  children: [
 Text("Discount",style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                   const    Spacer(),
                             Text("30%",style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(55, 182, 233, 1))),
                                  
                                  ],
                                ),
                               const  SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
 Text("Total",style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                   const    Spacer(),
                             Text("\$1,989.37",style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(55, 182, 233, 1))),
                                  
                                  ],
                                ),
                            
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
     Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(72, 92, 236, 1),
                               
                              ])),
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                            weight: 20,
                          ),
                        ),
                        const SizedBox(
  width: 10,
),
    Text("Check Out",style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(55, 182, 233, 1)))
  ],
),

                                 ],
                                )
                                ),

            ],
          )
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
                  color:const Color.fromARGB(7, 255, 255, 255)),
            ),
          ),
        ),
      ]
      )
    );
  }
  Widget cartitem(String image,String name,double price){
    return Container(
                      height: 111,
                      width: 430,
                     child: Row(
                      children: [
                        Container(
                          height: 108,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2,color: const Color.fromRGBO(255, 255, 255, 0.1)),
                            gradient:  const LinearGradient(colors: [
                              Color.fromRGBO(53, 63, 84, 0.6),
                              Color.fromRGBO(34, 40, 52, 0)
                            ])
                          ),
                          child: Image.asset(image),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name,style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1))),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Text("\$$price",style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(55, 182, 233, 1)),),
                                   const SizedBox(
                                    width: 40,
                                   ),
                                   Container(
                                    height: 31,
                                    width: 67,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color:const  Color.fromRGBO(30, 30, 30, 0.8)
                                    ),
                                   child: Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        alignment: Alignment.center,
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          gradient:const  LinearGradient(colors: [
                                           
                                            Color.fromRGBO(75, 76, 237, 1),
                                             Color.fromRGBO(75, 76, 237, 1),
                                          ])
                                        ),
                                        child:const  Icon(Icons.add,color: Color.fromRGBO(255, 255, 255, 1),size: 15,weight: 60,),
              
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                        Text("1",style: GoogleFonts.allertaStencil(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1))
                                ),
                                const SizedBox(
                                  width: 8,   
                                ),
                                 Container(
                                        height: 20,
                                        width: 20,
                                        alignment: Alignment.center,
                                        decoration:  BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          gradient:const  LinearGradient(colors: [
                                           
                                            Color.fromRGBO(255, 255, 255, 0.1),
                                             Color.fromRGBO(195, 195, 195, 0.5),
                                          ])
                                        ),
                                        child:const  Icon(Icons.remove,color: Color.fromRGBO(255, 255, 255, 1),size: 15,weight: 60,),
              
                                      ),
                                    ],
                                   ),
                                   
                                   ),
                                 
                                  
                                  ],
                                )
                          ],
                        )
                      ],
                     ),
                    );
  }
}