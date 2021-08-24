import 'package:btgiaodien/controller/signupcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
enum BestTutorSite { cafedev, w3schools }  
class SignUp extends StatelessWidget{
  static const menuItems = <String>[
    'One',
    'Two',
    'Three',
    'Four',
  ];
   final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
    signupcontroller controller=Get.put(signupcontroller());
    
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.black,
        title: Text('Sign Up',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
             Text('Email address',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
             SizedBox(height: 8,),
            _TextFiledEmail(),
            SizedBox(height: 8,),
            Text('well send your order confimation here',style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8,),
             Text('First name',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
             SizedBox(height: 8,),
            _TextFiledName(),
             SizedBox(height: 8,),
             Text('Last name',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
             SizedBox(height: 8,),
            _TextFiledLastName(),
             SizedBox(height: 8,),
             Text('Password',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
             SizedBox(height: 8,),
             _TextFiledPassWord(),
              SizedBox(height: 8,),
             Text('Must be 10 or more characters',style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8,),
               Text('Date of birth',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
               SizedBox(height: 8,),
              _dateofbirth() ,
              SizedBox(height: 8,),
              Text('You need to be 16 or over to use Ebuy',style: TextStyle(color: Colors.grey)),
              SizedBox(height: 8,),
               Text('Mostly interested in (Optional)',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(
                height: 8,
              ),
              
              radiosex(),
              ContactPrefestedIn(),
              SizedBox(
                height: 150,
              ),
              FlatButton(
                 
                 minWidth: 500,
                 height:50,
                 onPressed: (){
                  
                 }, 
                 child: Text('Sign Up'),
                 color: Colors.brown,
                 textColor: Colors.white,
                 ),

              

          ],
        )
      )
    );
  }

  Container ContactPrefestedIn() {
    return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
             color: Colors.white,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
),
boxShadow: [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3), // changes position of shadow
  ),
],
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Contact prefesred in',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.remove_circle_outline) 
                    ],
                  ),
                  Text('Tell us which email youd like',style: TextStyle(color: Colors.grey,fontSize: 15),textAlign: TextAlign.left,),
                  checkbox('Discounts and sales'),
                   checkbox('New stuff'),
                    checkbox('Your exclusives'),
                     checkbox('App partners'),
                     SizedBox(
                       height: 8,
                     ),
                     Text('Tell me more about these',style: TextStyle(color: Colors.grey,fontSize: 15),textAlign: TextAlign.left,),
                     SizedBox(
                       height: 8,
                     ),
                     Text('By creating your account,you ahree to our',style: TextStyle(color: Colors.grey,fontSize: 15),textAlign: TextAlign.left,),
                      SizedBox(
                       height: 8,
                     ),
                     Text('Tems and Condition & Privacy Policy',style: TextStyle(color: Colors.brown,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                ],
              ),
            );
  }

  Row checkbox(String title) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Obx(()=>Checkbox(
                        checkColor: Colors.brown,  
                        value: controller.isCheckk.value,
                         onChanged:(bool ? valuer) {
                           controller.ischeckbox(valuer);
                         }
                      ),)
                    ],
                  );
  }

  Container radiosex() {
    return Container(
              margin: EdgeInsets.all(8),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
    topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10)
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
              ),
 
              child: Row(
                children: [
                  Row(  
              children: [
                Radio(
                  activeColor: Colors.red,
                  value: controller.gender[0],
                  groupValue: controller.select,
                  onChanged: (value)=>controller.onClickRadionButton(value),
                ),
                Text('Womenswear'),
                
                Radio(
                  activeColor: Colors.red,
                  value: controller.gender[1],
                  groupValue: controller.select,
                  onChanged: (value)=>controller.onClickRadionButton(value),
                ),
                Text('Menswear'),
                
              ],
            )
                ],
              ),
            );
  }

  Row _dateofbirth() {
    return Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                 Obx(()=>
                 Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                     border: Border.all(
                     color: Colors.grey, style: BorderStyle.solid, width: 1),
        ),
                   child: DropdownButton(      
                     underline: DropdownButtonHideUnderline(child: Container()), 
                    items: _dropDownMenuItems,
                    value: controller.btn1SelectedVal.value,
                    onChanged: (String ? valuee){
                      controller.clickone(valuee);
                      print(controller.btn1SelectedVal.value);
                    },
                    ),
                 )),
                   Obx(()=>
                   Container(
                     width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                     border: Border.all(
                     color: Colors.grey, style: BorderStyle.solid, width: 1),
        ),
                     child: DropdownButton(
                       underline: DropdownButtonHideUnderline(child: Container()),
                  items: _dropDownMenuItems,
                  value: controller.btn1SelectedVal.value,
                  onChanged: (String ? valuee){
                      controller.clickone(valuee);
                      print(controller.btn1SelectedVal.value);
                  },
                  ),
                   )),
                   Obx(()=>
                   Container(
              
                     padding: EdgeInsets.symmetric(horizontal: 10.0),
                     decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                     border: Border.all(
                     color: Colors.grey, style: BorderStyle.solid, width: 1),
        ),
                     child: DropdownButton( 
                   underline: DropdownButtonHideUnderline(child: Container()),
                  items: _dropDownMenuItems,
                  value: controller.btn1SelectedVal.value,
                  onChanged: (String ? valuee){
                      controller.clickone(valuee);
                      print(controller.btn1SelectedVal.value);
                  },
                  ),
                   )
                  ),
              ],
            );
  }

  TextField _TextFiledName() {
    return TextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10)
              ), 
              labelText: 'First Name',
              hintText: 'Enter first name',
            ),
          );
  }

  TextField _TextFiledEmail() {
    return TextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10)
              ), 
              labelText: 'Email',
              hintText: 'Enter email address',
              
            ),
          );
  }
  
  TextField _TextFiledLastName() {
    return TextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10)
              ), 
              labelText: 'Last Name',
              hintText: 'Last Name',
              
            ),
          );
  } 

  TextField _TextFiledPassWord() {
    return TextField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(10)
              ), 
              labelText: 'Password',
              hintText: 'Password',
              
            ),
          );
  } 
}
