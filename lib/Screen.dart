import 'package:e_commerce/model/Screenmodel.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
static  String routeName="ll";
 ScreenModel screenModel;

Screen({  required this.screenModel,super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool isSelected=false;
  //bool _isBluetoothOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("e commerce"),),
      body:Column(children: [Align(alignment: Alignment.centerLeft,
          child: Text("Home Appliance",style: TextStyle(fontSize: 20,fontWeight:FontWeight.w900, ),)),SizedBox(height: 12,),

      Container(
      //color: Colors.red,
        height: 280,

          child:
            ListView.builder(padding: EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 10,//shrinkWrap: true,
                itemBuilder: (context,index){
              return Container(
                height: 180,
                width: 110,
                margin: EdgeInsets.only(right: 15),
                child:Column(
                mainAxisAlignment:MainAxisAlignment.start ,
                children: [
                  Stack(children: [ClipRRect(borderRadius:
                  BorderRadius.circular(20),
                    child: Image.asset("assets/images/nature.jpg",height: 150,width:180,fit: BoxFit.cover,
                      ),
                  ),
                    Positioned(right: 10,
                        top: 10,
                        child:Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: IconButton(padding: EdgeInsets.zero,
                              icon: Icon(size:20,
                                Icons.favorite,color:(isSelected==true)?Colors.blue[700]:Colors.white,), onPressed: () { setState(() {
                  isSelected=!isSelected;
                  });
                  },
                  ),//Icons.favorite,color:(isSelected==true)?Colors.blue[700]:Colors.white,
                          ),
                            ),
                          ),

                  ],
                  ),
                  SizedBox(height: 10,),
                  Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ) ,);
            }),

      )
    ])
    );
  }
}
