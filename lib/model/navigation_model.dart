import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: "Dashboard", icon: Icons.insert_chart),
  NavigationModel(title: "Explore", icon: Icons.search),
  NavigationModel(title: "Notifications", icon: Icons.notifications),
  NavigationModel(title: "About Us", icon: Icons.info),
  NavigationModel(title: "Contact Us", icon: Icons.perm_contact_calendar),
];
