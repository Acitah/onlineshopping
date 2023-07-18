import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:try_ui/constants.dart';

class Try extends StatefulWidget {
  const Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
     backgroundColor: Colors.black87,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('love is all we offer',style:TextStyle(color: Colors.amberAccent)),
                  Text('sarangae',style: TextStyle(color: Colors.amberAccent),)
                ],
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Positioned(
                        right: 1,top: 2,
                        child: Container(
                        height: 10,
                        width: 10,
                        decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                        ),
                        child: const Text('4',style: TextStyle(color: Colors.white,fontSize: 10,),textAlign: TextAlign.center,),
                      ),),
                      
                      const Icon(Icons.trolley),
                    ],
                  ),
                
                  const Icon(Icons.notifications)
                ],
              )
            ],
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(top:5),
            child: Container(
              
              height: size.height/25,
              width:size.width,
              decoration:const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10),),
              ),
              child: const Row(
               // mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                 Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('search...')
                ],
              ),
            ),
            
          ),
         const SizedBox(height: 10,),
          Padding(
            
            padding: const EdgeInsets.only(top:5, left:2),
            
            child: SizedBox(
              height: 150,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.veg.length,
                itemBuilder:(BuildContext context, index) {

                  return Padding(
                    padding: const EdgeInsets.only(top:10,left: 10),
                    child: Column(
                      
                      children: [
                          Container(
                            height:90,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage(Constants.veg[index]),
                              fit: BoxFit.cover)
                            ),
                            //height:70,
                           // width: 50,
                            //decoration: const BoxDecoration(
                              //shape: BoxShape.circle,
                             //color: Colors.amber
                            //image: DecorationImage(
                             // image: NetworkImage(Constants.veg[index]))
                              
                            ),

                           Text(Constants.vg[index],style: TextStyle(color:Colors.white),)
                           // ),
                            
                               // const Text('esther',style: TextStyle(color: Colors.white),)
                              
                            
                          
                                  
                                  
                      ],
                      
                    ),
                  );
                },
                
              ),
            ),
          ),
          const SizedBox(height: 20,),
         /* ListView(
            children: [

            ],
          ),*/
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 2),
            child: SizedBox(
              height: 200,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Constants.images.length,
                itemBuilder:(BuildContext context ,index){
                  return Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          
                          height: 150,
                          width: size.width/2,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(Constants.images[index])),
                           borderRadius: BorderRadius.circular(30),
                           
                            //color: Colors.black12
                          ),
                        ),
                        
                        Text(Constants.names[index], style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  );
                }
               ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left:5,),
          child: Container(
            height: size.height/15,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            
            child: Row(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:2,top:3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('silina bwemanyiiyo',style: TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 13,),),
                      Text('chaeee',style: TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 13,))
                    ],
                  ),
                ),
                SizedBox(
                        width: size.width/2,
                      ),
                  const Row(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('see all',style: TextStyle(color: Colors.white),),
                      
                      Icon(Icons.arrow_circle_right)
                    ],
                  )
              ],
              
            ),
          ),
        ),
        const SizedBox(height: 10,),
      /*  Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 170,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(BuildContext context,index){
                return Container(
                  //color: Colors.amber,
                  height: 200,
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  width: size.width/2,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                    //borderRadius: BorderRadius.circular(30),
                    
                    //color: Colors.blue,
                    
                  ),
                );
              } ),
          ),
        )*/
        
        SizedBox(
          height: 250,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10,right: 10),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((BuildContext context, index) {
            return  Padding(
              padding: EdgeInsets.all(8),
              child: 
                Container(
                  padding: EdgeInsets.all(8),
          height: 200,
          width:size.width/2,
          decoration: BoxDecoration(
            //color: Colors.amber,
            border: Border.all(),
           borderRadius: BorderRadius.circular(10),
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('hello' ,style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.accessible),                  
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    image: DecorationImage(
                      
                      fit: BoxFit.cover,
                      image: NetworkImage(Constants.img[index])
                    )
                  ),
                ),
                Text(Constants.nam[index], style: TextStyle(color: Colors.blue, fontSize: 15),),
                
                Row(
                  children: [
                    Text(Constants.nm[index],textAlign: TextAlign.left,style: TextStyle(color:Colors.red, fontSize: 25,fontWeight:FontWeight.bold ),),
                    Text(Constants.num[index],style:TextStyle(fontFeatures: [FontFeature.superscripts()],color: Colors.green))
                  ],
                )
              ],
            ),
          ),
        ),
              
            );
          })
          
         /* Container(
            height: 250,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
          ),*/
        ),)

       /* Padding(
          padding: const EdgeInsets.only(top:10),
          child: SizedBox(
            height:200 ,
            width:size.width,
            //color: Colors.blueAccent,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(BuildContext context, index){
                return Column(
                  children: [
                    Container(
                      height:size.height/13 ,
                      decoration: BoxDecoration(
                        //color: Colors.blueAccent
                      ),
                    )
                  ],
                );
              }
               ),
          ),
        )*/
        ],
      ),
    );
  }
}