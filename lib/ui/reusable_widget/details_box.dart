import 'package:flutter/material.dart';

class DetailsBox extends StatelessWidget {
  final String type;
  final String rating;
  final IconData icon;
  final String note;

  const DetailsBox({
    required this.icon,
    required this.note,
    required this.rating,
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15.0,
        ),
        color: Colors.blue[50],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      15.0,
                    ),
                    color: Colors.blue[100],
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    rating,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            note,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.0,
            ),
          )
        ],
      ),
    );
  }
}
