import 'package:flutter/material.dart';
import 'package:whatsapp_demo/pages/actus.dart';
import 'package:whatsapp_demo/pages/appels.dart';
import 'package:whatsapp_demo/pages/communities.dart';
import 'package:whatsapp_demo/pages/discussions.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const DiscussionsPage(),
    const ActusPage(),
    const CommunitiesPage(),
    const AppelsPage(),
  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
        ),
        child: NavigationBar(
          selectedIndex: pageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              pageIndex = index;
            });
          },
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.message),
              label: "Discussions",
            ),
            NavigationDestination(
              icon: Icon(Icons.filter_tilt_shift),
              label: "Actu",
            ),
            NavigationDestination(icon: Icon(Icons.group), label: "Communités"),
            NavigationDestination(icon: Icon(Icons.phone), label: "Appels"),
          ],
        ),
      ),
    );
  }
}
