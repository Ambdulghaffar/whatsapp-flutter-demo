import 'package:flutter/material.dart';

class DiscussionsPage extends StatelessWidget {
  const DiscussionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              print("Tu as cliqué sur : $value");
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Nouveau groupe",
                  child: Text("Nouveau groupe"),
                ),
                const PopupMenuItem(
                  value: "Nouvelle communauté",
                  child: Text("Nouvelle communauté"),
                ),
                const PopupMenuItem(
                  value: "Nouvelle diffusion",
                  child: Text("Nouvelle diffusion"),
                ),
                const PopupMenuItem(
                  value: "Appareils connectés",
                  child: Text("Appareils connectés"),
                ),
                const PopupMenuItem(
                  value: "Important",
                  child: Text("Important"),
                ),
                const PopupMenuItem(
                  value: "Tout lire",
                  child: Text("Tout lire"),
                ),
                const PopupMenuItem(
                  value: "Paramètres",
                  child: Text("Paramètres"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 1. La barre de recherche
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Demander à Meta AI ou rechercher",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(103, 217, 215, 215),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),

          // 2. Les boutons de filtres (Horizontaux)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  _buildFilterChip(const Text("Toutes"), true),
                  _buildFilterChip(const Text("Non lues"), false),
                  _buildFilterChip(const Text("Favoris"), false),
                  _buildFilterChip(const Text("Groupes"), false),
                  _buildFilterChip(const Icon(Icons.add_box_rounded), false),
                ],
              ),
            ),
          ),

          // 3. La liste des discussions (à venir)
          const Expanded(
            child: Center(
              child: Text(
                "Aucune discussion pour le moment",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_box, color: Colors.white),
      ),
    );
  }

  Widget _buildFilterChip(Widget labelContent, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: labelContent,
        backgroundColor: isSelected ? const Color(0xFFD8FDD2) : Colors.white,
        labelStyle: TextStyle(
          color: isSelected ? const Color(0xFF008069) : Colors.black,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
