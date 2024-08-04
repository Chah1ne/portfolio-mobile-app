import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline_model.dart';
import 'package:timeline_list/timeline.dart';
import '../widget/card_formation.dart';

class FormationScreen extends StatelessWidget {
  List<TimelineModel> items = [
    TimelineModel(
      CardFormation(
        'assets/images/logo.jpg',
        '2021',
        'Bachelor en informatique',
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.indigo,
      icon: Icon(Icons.school, color: Colors.white),
    ),
    TimelineModel(
      CardFormation(
        'assets/images/iset.jpg',
        '2021-2024',
        'Licence en développement des systèmes d\'informations',
      ),
      position: TimelineItemPosition.right,
      iconBackground: Colors.deepOrange,
      icon: Icon(Icons.school, color: Colors.white),
    ),
    TimelineModel(
      CardFormation(
        'assets/images/travail.jpg',
        '2024..',
        'Je souhaite étudier l\'ingénierie et faire de l\'alternance pour acquérir de l\'expérience',
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.teal,
      icon: Icon(Icons.school, color: Colors.white),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.easeInOutBack,
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/educ.jpg'),
                radius: 50,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Parcours Éducatif",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                color: Colors.indigo,
              ),
            ),
            Text(
              "Explorez mon chemin académique",
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 2,
              width: 50,
              color: Colors.indigo,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Timeline(
                  lineColor: Colors.grey.shade300,
                  children: items,
                  position: TimelinePosition.Center
              ),
            ),
          ],
        ),
      ),
    );
  }
}
