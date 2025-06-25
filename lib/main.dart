import 'package:flutter/material.dart';
import 'package:islami_app_c14/Core/ColorManager.dart';
import 'package:islami_app_c14/Ui/HomeScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: ColorManager.primary,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>((states){
            if(states.contains(MaterialState.selected)){
              return const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white
              );
            }else{
              return const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white
              );
            }
        }
          )
        )
      ),
      home: HomeScreen(),
    );
  }

}