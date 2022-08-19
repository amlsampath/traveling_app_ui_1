import 'package:flutter/material.dart';

class IconTextBox extends StatelessWidget {
  final String title;
  final IconData icon;
  const IconTextBox({required this.icon, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: Colors.grey,
              )),
          SizedBox(
            height: size.height * .01,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w100,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
