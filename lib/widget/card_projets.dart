import 'package:flutter/material.dart';

class CardProjet extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String description;
  final String imagePath; // Ajout de la propriété imagePath

  const CardProjet({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  _CardProjetState createState() => _CardProjetState();
}

class _CardProjetState extends State<CardProjet> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            isOpen = value;
          });
        },
        leading: Icon(
          isOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          widget.subtitle,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        widget.imagePath, // Utilisation du chemin d'image spécifique à chaque carte
                        height: 150, // Ajustez la taille de l'image selon vos besoins
                        width: 150,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  widget.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Hubbali',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
