import 'package:flutter/material.dart';

class SelfHelpModel {
  String title;
  IconData icon;

  SelfHelpModel({this.title, this.icon});
}

List<SelfHelpModel> selfHelpItems = [
  SelfHelpModel(title: "Dashboard", icon: Icons.insert_chart),
  SelfHelpModel(title: "Explore", icon: Icons.search),
  SelfHelpModel(title: "Notifications", icon: Icons.notifications),
  SelfHelpModel(title: "About Us", icon: Icons.info),
  SelfHelpModel(title: "Contact Us", icon: Icons.perm_contact_calendar),
];
