import 'package:flutter/material.dart';
import 'package:travelling_app/data/model/location_model.dart';
import 'package:travelling_app/ui/details/details.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<LocationModel> locationList = [
    LocationModel(
      address: 'Ella Road Badulla Sri Lanka',
      country: 'Sri Lanka',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '2520',
      rating: '4.59',
      hotel: 'Mount Beach Resort',
      tourCount: '220',
      photo: 'https://www.traveldailymedia.com/assets/2020/09/shutterstock_1566472765.jpg',
    ),
    LocationModel(
      address: 'Sea Flower Resort ',
      country: 'Thailand',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '220',
      rating: '4.5',
      hotel: 'Sea Flower Resort',
      tourCount: '16',
      photo: 'https://toursinindia.in/images/tourism-holidays/srilanka-tourist-place2.jpg',
    ),
    LocationModel(
      address: 'Ella Road Badulla Sri Lanka ',
      country: 'Sri Lanka',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '320',
      rating: '4.8',
      hotel: 'Real Village Resort',
      tourCount: '16',
      photo: 'https://toursinindia.in/images/tourism-holidays/srilanka-tourist-place4.jpg',
    ),
    LocationModel(
      address: 'Goal ',
      country: 'Thailand',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '220',
      rating: '4.5',
      hotel: 'Sea Flower Resort',
      tourCount: '16',
      photo: 'https://blog.thomascook.in/wp-content/uploads/2017/12/Untitled-design-12-1.png',
    ),
    LocationModel(
      address: 'Sea Flower Resort ',
      country: 'Thailand',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '220',
      rating: '4.5',
      hotel: 'Sea Flower Resort',
      tourCount: '16',
      photo: 'https://toursinindia.in/images/tourism-holidays/srilanka-tourist-place2.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/main_menu.png',
                      width: size.width * .08,
                    ),
                    Text(
                      'DiscountTour',
                      style: TextStyle(
                        fontSize: size.width * .05,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Icon(
                      Icons.search,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Find the best tour',
                  style: TextStyle(
                    fontSize: size.width * .05,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Country',
                  style: TextStyle(
                    fontSize: size.width * .03,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                height: size.height * .3,
                child: ListView.builder(
                    itemCount: locationList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      locationModel: locationList[index],
                                    )),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              20.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(
                            size.width * .02,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                                child: Image.network(
                                  locationList[index].photo,
                                  width: size.width * .4,
                                  height: size.height * .3,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  margin: EdgeInsets.all(
                                    size.width * .02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            locationList[index].country,
                                            style: TextStyle(
                                              fontSize: size.width * .045,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            locationList[index].tourCount + ' Tours',
                                            style: TextStyle(
                                              fontSize: size.width * .025,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(
                                          size.width * .01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white30,
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              locationList[index].rating,
                                              style: TextStyle(
                                                fontSize: size.width * .025,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: Container(
                                  padding: EdgeInsets.all(
                                    size.width * .01,
                                  ),
                                  margin: EdgeInsets.all(
                                    size.width * .02,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white30,
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'NEW',
                                        style: TextStyle(
                                          fontSize: size.width * .025,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                child: Text(
                  'Popular tours',
                  style: TextStyle(
                    fontSize: size.width * .04,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .01,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: size.width * .04,
                  right: size.width * .04,
                ),
                child: ListView.builder(
                  itemCount: locationList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    locationModel: locationList[index],
                                  )),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(size.width * .01),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  10,
                                ),
                                bottomLeft: Radius.circular(
                                  10,
                                ),
                              ),
                              child: Image.network(
                                locationList[index].photo,
                                width: size.width * .25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: size.width * .02,
                            ),
                            Container(
                              width: size.width * .55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    locationList[index].country,
                                    style: TextStyle(
                                      fontSize: size.width * .04,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    locationList[index].description,
                                    style: TextStyle(
                                      fontSize: size.width * .025,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.grey,
                                    ),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    locationList[index].price,
                                    style: TextStyle(
                                      fontSize: size.width * .04,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: size.width * .01,
                                right: size.width * .01,
                                top: size.width * .02,
                                bottom: size.width * .02,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(
                                  5.0,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    locationList[index].rating,
                                    style: TextStyle(
                                      fontSize: size.width * .025,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
