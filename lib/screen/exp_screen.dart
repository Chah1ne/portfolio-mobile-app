import 'package:flutter/material.dart';
import '../widget/card_exp.dart';

class ExpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/experience.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Expériences",
                        style: theme.textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MavenPro',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Expériences acquises au cours de mes stages et de mon parcours professionnel",
                        style: theme.textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Huballi',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 1.2,
              color: theme.dividerColor,
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                itemBuilder: (BuildContext ctx, int index) {
                  return CardExp(); // Assurez-vous que CardExp est bien stylisé
                },
                separatorBuilder: (BuildContext ctx, int index) {
                  return SizedBox(height: 16.0);
                },
                itemCount: 1, // Exemple d'ajout de plusieurs éléments pour tester
              ),
            ),
          ],
        ),
      ),
    );
  }
}
