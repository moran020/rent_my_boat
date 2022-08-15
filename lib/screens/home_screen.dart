import 'package:flutter/material.dart';
import  '../data/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late bool isPressed_1 = false;
  late bool isPressed_2 = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Image.asset('assets/icons/vector.png', width: 100,),
              const SizedBox( height: 40,),
              SizedBox( 
                height:75, 
                width:double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isPressed_1? pressedButton : activeButton , 
                    elevation: 5,
                    shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  onPressed: (){
                    Navigator.pushNamed( context,'/owner_form',);
                    setState(() {
                      isPressed_1 = true;
                      isPressed_2 = false;
                    });
                    
                  }, 
                  child:  const Text('Я владелец лодки')) ),
              const SizedBox( height: 20,),
              SizedBox( 
                height:75, 
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: isPressed_2? pressedButton : activeButton ,
                    elevation: 5,
                    shape: RoundedRectangleBorder( 
                        borderRadius: BorderRadius.circular(30)
                    ), 
                  ),
                  onPressed: (){
                    Navigator.pushNamed( context,'/owner_form',);
                    setState(() {
                      isPressed_2 = true;
                      isPressed_1 = false;
                    });
                  }, 
                  child:  const Text('Я хочу арендовать лодку')) ),
            ],
            
          ),
        ),
      ),
    );
  }
}



