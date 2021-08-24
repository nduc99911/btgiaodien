import 'package:btgiaodien/page/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class PageHello extends StatelessWidget{
  var kIcons = <Image>[
    Image.asset('assets/images/anh1.jpg',),
    Image.asset('assets/images/anh2.jpg'),
    Image.asset('assets/images/anh3.jpg'),
  ];
  var kText = <Text>[
    Text('data'),
     Text('data1'),
      Text('data2'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/signup', 
          page: ()=>SignUp())
      ],
      home:  DefaultTabController(
      length: 3, 
      child: Builder(
        builder: (BuildContext context)=>
        Column(
          children: [  
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Page1(),
                  Page2(),
                  Page3(),
                ],

                ),
            ),
           
             TabPageSelector(
              
            ),
             Padding(
               padding: const EdgeInsets.all(50.0),
               child: FlatButton(
                 
                 minWidth: 500,
                 height:50,
                 onPressed: (){
                   final TabController controller =
                        DefaultTabController.of(context)!;
                    if (!controller.indexIsChanging) {
                      controller.animateTo(kIcons.length - 1);
                    }
                    if(controller.index==2){
                      Get.toNamed('/signup');
                    }
                 }, 
                 child: Text('Get Started!'),
                 color: Colors.brown,
                 textColor: Colors.white,
                 ),
             )
          ],
        )
        
      ),
      ),
    );
   
  }
  
}
class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/anh1.jpg',width: 400,height: 400,),
            ),
            ListTile(
              title: Text('View product 360 degrees',
              style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:25),
              textAlign: TextAlign.center,),
              subtitle: Text('You Can see the product with all angles true and convenient',textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }

}
class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/anh2.jpg',width: 400,height: 400,),
            ),
            ListTile(
              title: Text('Find products easily',
              style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:25),
              textAlign: TextAlign.center,),
              subtitle: Text('You just to take a phôt or upload and we will find similar product for you',textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }

}
class Page3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/images/anh3.jpg',width: 400,height: 400,),
            ),
            ListTile(
              title: Text('Payment is easy',
              style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize:25),
              textAlign: TextAlign.center,),
              subtitle: Text('You just need to take a photo or upload and we will find simllar product for you',textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }

}