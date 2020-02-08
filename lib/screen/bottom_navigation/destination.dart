import 'package:flutter/material.dart';

class Destination{
  final String title;
  final IconData icon;
  final Color color;

  const Destination({@required this.title, this.icon, this.color});


}
 const List<Destination> allDestinations = [
  Destination(title: 'Dashboard', icon: Icons.home, color: Colors.blue),
  Destination(title: 'Deliveries', icon: Icons.card_giftcard, color: Colors.green),
  Destination(title: 'Create', icon: Icons.add_circle, color: Colors.purple),
  Destination(title: 'Wallet', icon: Icons.monetization_on, color: Colors.red),
  Destination(title: 'Profile', icon: Icons.person, color: Colors.pinkAccent),
];