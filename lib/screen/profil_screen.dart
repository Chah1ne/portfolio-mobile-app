import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  List<String> skills = [
    'Flutter',
    'Android',
    'UML',
    'SQL',
    'MySQL',
    'Rest api',
    'Node.js',
    'JavaScript',
    'React',
    'Angular',
    'Java',
    'PHP',
    'Docker',
    'Figma',
  ];

  Widget _buildLinkedInProfile(String name, String url) {
    return GestureDetector(
      onTap: () => _launchLinkedInProfile(url),
      child: Row(
        children: [
          Icon(Icons.link),
          SizedBox(width: 5),
          Text(
            name,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }

  void _launchLinkedInProfile(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: false, forceWebView: false, enableJavaScript: true);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
      // Affichez l'erreur ou prenez une action appropriée ici
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Theme.of(context).backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/profil.jpg'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tsouri Chahine',
                          style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MavenPro',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "FullStack Js Developer | MERN Stack | Mobile App Developer ( Flutter )",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'MavenPro',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Curieux et désireux d'innover, j'ai à cœur de contribuer à la construction d'applications fonctionnelles. J'aime aussi sortir de ma zone de confort en essayant de nouvelles technologies.",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MavenPro',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),


              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.contact_phone,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Contact",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildLinkedInProfile('    LinkedIn Profile', 'https://www.linkedin.com/in/tsouri-chahine'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildLinkedInProfile('    My Portfolio', 'https://chah1ne.github.io/myportfolio/'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color:
                        Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      SizedBox(width: 22),
                      Text(
                        "tsouri.chahine@gmail.com",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color:
                        Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      SizedBox(width: 22),
                      Text(
                        "99 290 902      ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.directions_car,
                        color:
                        Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Permis B",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                          // fontStyle: FontStyle.italic
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.place,
                        color: Theme.of(context).textTheme.bodyText2!.color,
                      ),
                      SizedBox(width: 22),
                      Text(
                        "Tunisia",
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: Center(
                            child: Image.asset(
                              'assets/images/Tunisia.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30), // Ajout d'un espace entre les éléments
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Theme.of(context).textTheme.bodyText2!.color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "21 ans",
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.card_travel,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Compétences",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(10),
                  children: List.generate(skills.length, (index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 20,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            skills[index],
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                              color: Theme.of(context).textTheme.bodyText1!.color,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),


              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.grade,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Certification ",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.javascript,
                        color: Colors.yellow,
                        size: 30,
                      ),
                      SizedBox(width: 22),
                      GestureDetector(
                        onTap: () => _launchURL('https://drive.google.com/file/d/1fUkQ8mPrCOJsiiSRNV1NNrUA5VRQGtUi/view'),
                        child: Text(
                          "Certificat de formation en \nJavaScript délivré par le \nMicrosoft Tech Club ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                            fontSize: 15,
                            fontFamily: 'Hubbali',
                            decoration: TextDecoration.underline,
                            color: Colors.blue, // Change color as desired
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.code,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(width: 22),
                      GestureDetector(
                        onTap: () => _launchURL('https://drive.google.com/file/d/1CQgb_cfYiUqk7C9gCrZPXFBvmhUG8aeL/view'),
                        child: Text(
                          "Certificat de participation au \nhackathon 24h de programmation \net développement web ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                            fontSize: 14,
                            fontFamily: 'Hubbali',
                            decoration: TextDecoration.underline,
                            color: Colors.blue, // Change color as desired
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              SizedBox(
                height: 10,
              ),


              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.language_outlined,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Langues",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: <Widget>[
                          Card(
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/France.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 22),
                          Text(
                            "Français     ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Card(
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Angland.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 22),
                          Text(
                            "Anglais      ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Card(
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: Center(
                            child: Image.asset(
                              'assets/images/Tunisia.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 22),
                      Text(
                        "Arabe   ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Card(
                        child: SizedBox(
                          width: 25,
                          height: 25,
                          child: Center(
                            child: Image.asset(
                              'assets/images/Italy.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 22),
                      Text(
                        "Italy            ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 16,
                          fontFamily: 'Hubbali',
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),


              Row(
                children: <Widget>[
                  Icon(
                    Icons.person,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Critéres ",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.people,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Esprit d'équipe",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.sync_problem,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Résolution de Problèmes",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.cast_for_education,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Curiosité et Apprentissage\nContinu",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              Divider(
                thickness: 0.8,
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),

              Row(
                children: <Widget>[
                  Icon(
                    Icons.interests,
                    color: Theme.of(context).textTheme.bodyText1!.color,
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Centres d'intérêt ",
                    style:
                    Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 25,
                      fontFamily: 'MavenPro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.photo_camera,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Photographie",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.travel_explore,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Voyages   ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.sports_esports,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Video Game   ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.sports_soccer,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .color,
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Sport        ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: 'Hubbali',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
