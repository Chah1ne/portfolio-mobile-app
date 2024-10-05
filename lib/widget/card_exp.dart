import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardExp extends StatefulWidget {
  @override
  _CardExpState createState() => _CardExpState();
}

class _CardExpState extends State<CardExp> {
  bool isOpen1 = false;
  bool isOpen2 = false;
  bool isOpen3 = false;
  bool isOpen4 = false;


  final List<String> skills1 = [
    'Architecture de la BDD',
    'Etude du projet',
    'Conception du projet',
  ];

  final List<String> skills2 = [
    'Cloud computing',
    'Sécurité informatique',
    'Analyse de données',
    'Communication et collaboration',
  ];

  final List<String> skills3 = [
    'Intégration avec la base de donnée des sites web de chimiothérapie et de radiothérapie pour la gestion des données des patients',
    'Maintenance des informations et de l\'application',
    'Utilisation de sécurité token et JWT',
    'Utilisation de REST API',
    'Hébergement du backend',
    'Conception UML d\'applications',
    'Design avec Figma',
    'Gestion de projet',
    'Partie DevOps',
  ];

  final List<String> skills4 = [

  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildExpCard(
            title: "Teamwill",
            period: "oct 2024 - Today",
            role: "",
            projectTitle: "Technical Consultant",
            //prize: "",
            description: "",
            skills: skills4,
            techEnvironment: {},
            isOpen: isOpen4,
            onTap: () {
              setState(() {
                isOpen4 = !isOpen4;
              });
            },
          ),

          SizedBox(height: 16),

          _buildExpCard(
            title: "ASQII",
            period: "nov 2023 - juil 2024",
            role: "Application mobile Pour l'oncologie",
            projectTitle: "Software Developer",
            prize: "Premier prix",
            description:
            "Développement d'une application mobile à destination des patients pour les accompagner tout au long de leur parcours de traitement.",
            skills: skills3,
            techEnvironment: {
              'BACK': 'NodeJs, Sequelize, MySQL',
              'Front': 'Flutter',
              'Autres': 'Git, UML, Agile Scrum, Docker, Cloudinary, Nodemailer, WebSocket'
            },
            isOpen: isOpen3,
            onTap: () {
              setState(() {
                isOpen3 = !isOpen3;
              });
            },
            projectUrl: 'https://asqii.tn/en/oncoguide/',
          ),
          SizedBox(height: 16),
          _buildExpCard(
            title: "CNI",
            period: "Jan 2023 - Fév 2023",
            role: "Stage",
            projectTitle: "Full-Stack Js Developer",
            description:
            "Le projet utilise React, Node.js et MongoDB pour une plateforme web simplifiant la gestion des formations en ligne, facilitant ainsi la planification et la participation aux cours.",
            skills: skills1,
            techEnvironment: {
              'BACK': 'NodeJs, MongoDB, MySQL',
              'Front': 'ReactJs, CSS, HTML, JavaScript',
              'Autres': 'Git, UML, Agile Scrum'
            },
            isOpen: isOpen1,
            onTap: () {
              setState(() {
                isOpen1 = !isOpen1;
              });
            },
          ),
          SizedBox(height: 16),
          _buildExpCard(
            title: "CTN",
            period: "Jan 2022 - Fév 2022",
            role: "Stage",
            description:
            "Développement d'un site web pour la gestion des achats et mise à jour des données.",
            skills: skills2,
            techEnvironment: {
              'BACK': 'PHP, Oracle, SQL',
              'Front': 'CSS, HTML, JavaScript',
              'Autres': 'UML'
            },
            isOpen: isOpen2,
            onTap: () {
              setState(() {
                isOpen2 = !isOpen2;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildExpCard({
    required String title,
    required String period,
    required String role,
    String? projectTitle,
    String? prize,
    required String description,
    required List<String> skills,
    required Map<String, String> techEnvironment,
    required bool isOpen,
    required VoidCallback onTap,
    String? projectUrl,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOutQuint,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8)
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.domain, color: Theme.of(context).primaryColor),
                    SizedBox(width: 10),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Text(
                  period,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            SizedBox(height: 10),
            if (projectTitle != null) ...[
              Align(
                alignment: Alignment.center,
                child: Text(
                  projectTitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
            if (prize != null) ...[
              Text(
                prize,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
            ],
            Text(
              role,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            if (!isOpen) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Appuyez pour plus de détails',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              SizedBox(height: 10),
            ],
            if (isOpen) ...[
              // Container for skills
              Container(
                height: min(skills.length * 20.0, 120.0),
                // Adjust max height as needed
                child: Scrollbar(
                  thumbVisibility: true,
                  child: ListView.builder(
                    itemCount: skills.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          '• ${skills[index]}',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Environnement technique :",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: techEnvironment.entries.map((entry) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      '${entry.key} : ${entry.value}',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  );
                }).toList(),
              ),
            ],
            if (projectUrl != null) ...[
              SizedBox(height: 15),
              GestureDetector(
                onTap: () async {
                  if (await canLaunch(projectUrl)) {
                    await launch(projectUrl);
                  } else {
                    throw 'Could not launch $projectUrl';
                  }
                },
                child: Text(
                  'Voir le projet déployé',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
