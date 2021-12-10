import 'package:famliciousapp/views/chart_view.dart';
import 'package:famliciousapp/views/favorite_view.dart';
import 'package:famliciousapp/views/profile_view.dart';
import 'package:famliciousapp/views/timwline_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomeView extends StatefulWidget {
   HomeView({ Key? key }) : super(key: key);
  

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  IndexedStack(
        index:currentIndex ,
        children: [
          TimeLineView(),
          ChartView(),
          FavoriteView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=>setState(()=>currentIndex =index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 40),
        items:const[
          BottomNavigationBarItem(
            icon: Icon(UniconsSolid.clock_three),label:"Tasks"),
          BottomNavigationBarItem(
            icon: Icon(UniconsSolid.comment_dots),label:"Charts"),
          BottomNavigationBarItem(
            icon: Icon(UniconsSolid.favorite),label:"Favorites"),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),label:"Profile"),
        ],
      )
      
    );
  }
}