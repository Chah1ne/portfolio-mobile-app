import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import du package CarouselSlider
import '../widget/card_projets.dart';

class ProjetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme
            .of(context)
            .backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/projet1.png'),
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mes projets",
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline4!
                            .copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MavenPro',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Principales réalisations et projets.",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Huballi',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                thickness: 0.8,
                color: Theme
                    .of(context)
                    .canvasColor,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  children: [
                    buildProjectCard(
                      title: "Mise en place d'un site web E-commerce",
                      subtitle: "Angular / Node.js / MongoDB",
                      color: Colors.blue,
                      description:
                      "Notre plateforme de commerce en ligne offre une expérience complète pour acheter et vendre une large gamme de produits. Que vous soyez un acheteur à la recherche de produits de qualité ou un vendeur souhaitant atteindre une large audience, notre site est conçu pour répondre à vos besoins.",
                      imagePath: "assets/images/capture/PR11.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Mise en place d'un site web E-commerce",
                                  subtitle: "Angular / Node.js / MongoDB\n\nhttps://github.com/Chah1ne/Angular-E-commerce",
                                  description:
                                  "Notre plateforme de commerce en ligne offre une expérience complète pour acheter et vendre une large gamme de produits. Que vous soyez un acheteur à la recherche de produits de qualité ou un vendeur souhaitant atteindre une large audience, notre site est conçu pour répondre à vos besoins.",
                                  imagePath: "assets/images/AngularNodeJs.png",
                                  screenshots: [
                                    "assets/images/capture/PR11.png",
                                    "assets/images/capture/PR12.png",
                                    "assets/images/capture/PR13.png",
                                     "assets/images/capture/PR14.png",
                                    "assets/images/capture/PR15.png",
                                    "assets/images/capture/PR16.png",

                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Site E-commerce pour la vente de voitures",
                      subtitle: "Angular / Spring Boot",
                      color: Colors.green,
                      description:
                      "Développement d'un site E-commerce pour la vente de voitures avec Angular et Spring Boot, incluant des tests unitaires avec Mockito, gestion du paiement et de la facturation.",
                      imagePath: "assets/images/capture/PR21.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Site E-commerce pour la vente de voitures",
                                  subtitle: "Angular / Spring Boot\n\nhttps://github.com/Chah1ne/MotorMarket-frontend",
                                  description:
                                  "Développement d'un site E-commerce pour la vente de voitures avec Angular et Spring Boot, incluant des tests unitaires avec Mockito, gestion du paiement et de la facturation.",
                                  imagePath: "assets/images/AngularSpring.png",
                                  screenshots: [
                                    "assets/images/capture/PR21.png",
                                    "assets/images/capture/PR22.png",
                                    "assets/images/capture/PR23.png",
                                    "assets/images/capture/PR24.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Site web 'ArtyProd'",
                      subtitle: "Framework Django",
                      color: Colors.red,
                      description:
                      "Développement du site web 'ArtyProd' dédié au design graphique, à la production audiovisuelle et à la conception 3D avec Accès à l'administration du site , utilisant le framework Django.",
                      imagePath: "assets/images/capture/PR32.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Site web 'ArtyProd'",
                                  subtitle: "Framework Django\n\nhttps://github.com/Chah1ne/ArtyProd-project",
                                  description:
                                  "Développement du site web 'ArtyProd' dédié au design graphique, à la production audiovisuelle et à la conception 3D avec Accès à l'administration du site , utilisant le framework Django.",
                                  imagePath: "assets/images/django.png",
                                  screenshots: [
                                    "assets/images/capture/PR31.png",
                                    "assets/images/capture/PR32.png",
                                    "assets/images/capture/PR33.png",
                                    "assets/images/capture/PR34.png",
                                    "assets/images/capture/PR35.png",
                                    "assets/images/capture/PR36.png",
                                    "assets/images/capture/PR37.png",
                                    "assets/images/capture/PR38.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "English Dictionary 📚",
                      subtitle: "Javascript / Dictionary / google-translate / CSS",
                      color: Colors.black,
                      description:
                      "The English Dictionary is a comprehensive online platform designed to assist users in understanding and mastering the English language. With an extensive database of words, definitions, and examples, it serves as an invaluable resource for students, writers, educators, and anyone with a passion for language.",
                      imagePath: "assets/images/capture/PR71.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "English Dictionary 📚",
                                  subtitle: "Javascript / Dictionary / google-translate / CSS\n\ndeployé : https://chah1ne.github.io/Dictionary/",
                                  description:
                                  "The English Dictionary is a comprehensive online platform designed to assist users in understanding and mastering the English language. With an extensive database of words, definitions, and examples, it serves as an invaluable resource for students, writers, educators, and anyone with a passion for language.",
                                  imagePath: "assets/images/javascript.png",
                                  screenshots: [
                                    "assets/images/capture/PR71.png",
                                    "assets/images/capture/PR72.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Gestion d'une agence de location de voitures",
                      subtitle: "Java",
                      color: Colors.deepPurple,
                      description:
                      "Conception et gestion d'une agence de location de voitures avec le langage Java.",
                      imagePath: "assets/images/capture/PR44.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Gestion d'une agence de location de voitures",
                                  subtitle: "Java",
                                  description:
                                  "Conception et gestion d'une agence de location de voitures avec le langage Java.",
                                  imagePath: "assets/images/java.png",
                                  screenshots: [
                                    "assets/images/capture/PR41.png",
                                    "assets/images/capture/PR42.png",
                                    "assets/images/capture/PR43.png",
                                    "assets/images/capture/PR44.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "SoundHaven E-commerce WebSite 🎧",
                      subtitle: "React / json / PostgreSQL / tailwindcss",
                      color: Colors.cyan,
                      description:
                      "SoundHaven is an e-commerce platform dedicated to sound and music enthusiasts, offering a comprehensive range of high-quality audio products. Whether you're looking for headphones, speakers, earphones, or audio systems, SoundHaven has everything you need for an exceptional listening experience .",
                      imagePath: "assets/images/capture/PR61.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "SoundHaven E-commerce WebSite 🎧",
                                  subtitle: "React / json / PostgreSQL / tailwindcss\n\nhttps://github.com/Chah1ne/SoundHaven",
                                  description:
                                  "SoundHaven is an e-commerce platform dedicated to sound and music enthusiasts, offering a comprehensive range of high-quality audio products. Whether you're looking for headphones, speakers, earphones, or audio systems, SoundHaven has everything you need for an exceptional listening experience.",
                                  imagePath: "assets/images/react.png",
                                  screenshots: [
                                    "assets/images/capture/PR61.png",
                                    "assets/images/capture/PR62.png",
                                    "assets/images/capture/PR63.png",
                                    "assets/images/capture/PR64.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Application mobile Pour l'oncologie",
                      subtitle: "Flutter / NodeJs / socket-io / docker / cloudinary-api / jwt / nodemailer",
                      color: Colors.pink,
                      description: """
ONCOGUIDE est une application mobile innovante conçue pour aider les patients atteints de cancer à gérer leur traitement et leur suivi médical. Cette application vise à améliorer la communication entre les patients et les médecins, tout en fournissant des outils essentiels pour le suivi des traitements.

**Fonctionnalités pour les Patients :**

 • Suivi des Traitements :  
  Les patients peuvent enregistrer et suivre leurs traitements de chimiothérapie et radiothérapie.

 • Rappels de Médicaments :  
  Notifications pour rappeler aux patients de prendre leurs médicaments.

 • Journal de Santé : 
  Les patients peuvent enregistrer leurs symptômes et effets secondaires quotidiens.

 • Accès aux Documents Médicaux :  
  Stockage sécurisé et accès facile aux documents médicaux.

**Fonctionnalités pour les Médecins :**

 • Suivi des Patients :**  
  Visualisation des traitements et des journaux de santé des patients.

 • Communication Sécurisée :  
  Messagerie sécurisée pour communiquer directement avec les patients.

 • Consulter les Effets Indésirables : 
  Consultez facilement les effets indésirables signalés par vos patients pour ajuster leurs traitements si nécessaire.

 • Création de Contenu Éducatif : 
  Fournissez des ressources éducatives personnalisées pour vos patients, afin de les aider à mieux comprendre leur état de santé et leur traitement.
  """,
                      imagePath: "assets/images/capture/PR80.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailProjetScreen(
                              title: "Application mobile Pour l'oncologie",
                              subtitle: "Flutter / NodeJs / socket-io / docker / cloudinary-api / jwt / nodemailer\n\nhttps://github.com/Chah1ne/ONCOGUIDE-Mobile-App",
                              description: """
ONCOGUIDE est une application mobile innovante conçue pour aider les patients atteints de cancer à gérer leur traitement et leur suivi médical. Cette application vise à améliorer la communication entre les patients et les médecins, tout en fournissant des outils essentiels pour le suivi des traitements.

**Fonctionnalités pour les Patients :**

 • Suivi des Traitements :  
  Les patients peuvent enregistrer et suivre leurs traitements de chimiothérapie et radiothérapie.

 • Rappels de Médicaments :  
  Notifications pour rappeler aux patients de prendre leurs médicaments.

 • Journal de Santé : 
  Les patients peuvent enregistrer leurs symptômes et effets secondaires quotidiens.

 • Accès aux Documents Médicaux :  
  Stockage sécurisé et accès facile aux documents médicaux.

**Fonctionnalités pour les Médecins :**

 • Suivi des Patients :
  Visualisation des traitements et des journaux de santé des patients.

 • Communication Sécurisée :  
  Messagerie sécurisée pour communiquer directement avec les patients.

 • Consulter les Effets Indésirables : 
  Consultez facilement les effets indésirables signalés par vos patients pour ajuster leurs traitements si nécessaire.

• Création de Contenu Éducatif : 
  Fournissez des ressources éducatives personnalisées pour vos patients, afin de les aider à mieux comprendre leur état de santé et leur traitement.\n\nplus de détails : asqii.tn/en/oncoguide/
  """,
                              imagePath: "assets/images/FlutterNode.png",
                              screenshots: [
                                "assets/images/capture/PR81.png",
                                "assets/images/capture/PR82.png",
                                "assets/images/capture/PR83.png",
                                "assets/images/capture/PR84.png",
                                "assets/images/capture/PR85.png",
                                "assets/images/capture/PR86.png",
                                "assets/images/capture/PR87.png",
                                "assets/images/capture/PR88.png",
                                "assets/images/capture/PR89.png",
                                "assets/images/capture/PR899.png",
                                "assets/images/capture/PR8999.png",


                                // Ajoutez autant de captures d'écran que nécessaire
                              ],
                            ),
                          ),
                        );
                      },
                    ),

                    buildProjectCard(
                      title: "bloc-note 📋",
                      subtitle: "typescript",
                      color: Colors.blue,
                      description:
                      "About A minimalistic to-do list web app for effortlessly tracking tasks while browsing 📋.",
                      imagePath: "assets/images/capture/PR51.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "bloc-note 📋",
                                  subtitle: "typescript\n\ndeployé : https://bloc-note.vercel.app",
                                  description:
                                  "About A minimalistic to-do list web app for effortlessly tracking tasks while browsing 📋..",
                                  imagePath: "assets/images/typescript.png",
                                  screenshots: [
                                    "assets/images/capture/PR51.png",
                                    "assets/images/capture/PR52.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),



                    buildProjectCard(
                      title: "Application mobile dédiée aux voyages",
                      subtitle: "Flutter / Firebase",
                      color: Colors.blueGrey,
                      description:
                      "Développement d'une application mobile dédiée aux voyages avec Flutter et Firebase, offrant divers services tels que la météo, les informations sur les pays et une galerie photo.",
                      imagePath: "assets/images/voyage.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Application mobile dédiée aux voyages",
                                  subtitle: "Flutter / Firebase\n\nhttps://github.com/Chah1ne/App-Mobile-Voyage",
                                  description:
                                  "Développement d'une application mobile dédiée aux voyages avec Flutter et Firebase, offrant divers services tels que la météo, les informations sur les pays et une galerie photo.",
                                  imagePath: "assets/images/FlutterFire.png",
                                  screenshots: [
                                    "assets/images/capture/PR90.png",
                                    "assets/images/capture/PR91.png",
                                    "assets/images/capture/PR92.png",
                                    "assets/images/capture/PR93.png",
                                    "assets/images/capture/PR94.png",
                                    "assets/images/capture/PR95.png",
                                    "assets/images/capture/PR96.png",
                                    "assets/images/capture/PR97.png",
                                    "assets/images/capture/PR98.png",
                                    "assets/images/capture/PR99.png",

                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Application mobile personnalisée pour mon CV",
                      subtitle: "Flutter",
                      color: Colors.teal,
                      description:
                      "Création d'une application mobile personnalisée pour mon CV avec Flutter.",
                      imagePath: "assets/images/cv.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Application mobile personnalisée pour mon CV",
                                  subtitle: "Flutter\n\nhttps://github.com/Chah1ne/CV-App-Mobile",
                                  description:
                                  "Création d'une application mobile personnalisée pour mon CV avec Flutter.",
                                  imagePath: "assets/images/flutter.png",
                                  screenshots: [
                                    "assets/images/capture/PR100.png",
                                    "assets/images/capture/PR101.png",
                                    "assets/images/capture/PR102.png",
                                    "assets/images/capture/PR103.png",
                                    "assets/images/capture/PR104.png",
                                    "assets/images/capture/PR105.png",
                                    "assets/images/capture/PR106.png",
                                    "assets/images/capture/PR107.png",

                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Application mobile pour la gestion des livres",
                      subtitle: "Android",
                      color: Colors.black87,
                      description:
                      "Développement d'une application Android pour la gestion d'une bibliothèque de livres, utilisant Android Studio et SQLite.",
                      imagePath: "assets/images/livre.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Application mobile pour la gestion des livres",
                                  subtitle: "Android\n\nhttps://github.com/Chah1ne/App-Mobile-GestionLivre",
                                  description:
                                  "Développement d'une application Android pour la gestion d'une bibliothèque de livres, utilisant Android Studio et SQLite.",
                                  imagePath: "assets/images/Android.png",
                                  screenshots: [
                                    "assets/images/capture/PR1001.png",
                                    "assets/images/capture/PR1002.png",
                                    "assets/images/capture/PR1003.png",
                                    "assets/images/capture/PR1004.png",
                                    "assets/images/capture/PR1005.png",

                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),
                    buildProjectCard(
                      title: "Application mobile chat vocale ( speech to text )",
                      subtitle: "Flutter",
                      color: Colors.teal,
                      description:
                      "Chat vocal, transformation du vocal en texte et sauvegarde du texte au backend .",
                      imagePath: "assets/images/capture/PR2000.png",
                      onTap: () {
                        // Action à effectuer lors du clic sur la carte
                        // Exemple de navigation vers une nouvelle page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProjetScreen(
                                  title: "Application mobile chat vocale ( speech to text )",
                                  subtitle: "Flutter\n\nhttps://github.com/Chah1ne/vocale-chat-flutter",
                                  description:
                                  "Chat vocal, transformation du vocal en texte et sauvegarde du texte au backend .",
                                  imagePath: "assets/images/flutter.png",
                                  screenshots: [
                                    "assets/images/capture/PR2000.png",
                                    // Ajoutez autant de captures d'écran que nécessaire
                                  ],
                                ),
                          ),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProjectCard({
    required String title,
    required String subtitle,
    required Color color,
    required String description,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Cliquer pour voir plus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailProjetScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String imagePath;
  final List<String> screenshots; // Liste des chemins d'images des captures d'écran

  DetailProjetScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.imagePath,
    required this.screenshots,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  // CarouselSlider pour afficher les captures d'écran
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      viewportFraction: 0.8,
                    ),
                    items: screenshots.map((screenshot) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(screenshot),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

