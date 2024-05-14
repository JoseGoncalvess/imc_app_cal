import 'package:flutter/material.dart';
import 'package:imc_app_cal/pages/home_view_model.dart';


class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.3,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20
              ))
            ),
            child:  Padding(
              padding:  EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Calculadora de IMC", style: TextStyle(fontWeight: FontWeight.bold, fontSize:MediaQuery.sizeOf(context).width * 0.07 ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: MediaQuery.sizeOf(context).height * 0.06,
                       width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),Container(height: MediaQuery.sizeOf(context).height * 0.06,
                       width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: const  BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          
                        ),
                      )
                    ],
                  ),
                                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: MediaQuery.sizeOf(context).height * 0.06,
                       width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration:const  BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),Container(height: MediaQuery.sizeOf(context).height * 0.06,
                       width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration:const  BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                          
                        ),
                      )
                    ],
                  )
                  
                  ],
              ),
            )
            
          ),Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.red,
                
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height*0.08,
            child: ElevatedButton(
              style: ButtonStyle(
                
              ),
              onPressed: (){}, child: Text("Calcular")),
          )
        ],
      ),
    ),
  );
  }
  
}