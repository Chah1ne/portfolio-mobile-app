import 'package:flutter/material.dart';

class CardFormation extends StatefulWidget {
  final String image;
  final String year;
  final String title;

  CardFormation(this.image, this.year, this.title);

  @override
  _CardFormationState createState() => _CardFormationState();
}

class _CardFormationState extends State<CardFormation> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hover) {
        setState(() {
          isHovered = hover;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          color: isHovered ? Colors.deepPurpleAccent : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.5),
              blurRadius: isHovered ? 20 : 10,
              offset: Offset(0, isHovered ? 15 : 5),
            ),
          ],
        ),
        transform: isHovered
            ? Matrix4.identity()
            : Matrix4.identity(),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.year,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: isHovered ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: isHovered ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
