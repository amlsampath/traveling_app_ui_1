import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelling_app/data/model/location_model.dart';
import 'package:travelling_app/ui/reusable_widget/details_box.dart';
import 'package:travelling_app/ui/reusable_widget/icon_text_box.dart';

class Details extends StatefulWidget {
  final LocationModel locationModel;
  const Details({required this.locationModel, Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
/*       LocationModel(
      address: 'Goal ',
      country: 'Thailand',
      description: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: String.fromCharCodes(new Runes('\u0024')) + '220',
      rating: '4.5',
      hotel: 'Sea Flower Resort',
      tourCount: '16',
      photo: 'https://blog.thomascook.in/wp-content/uploads/2017/12/Untitled-design-12-1.png',
    ), */

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
            ),
            Image.network(
              widget.locationModel.photo,
              height: size.height * .5,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: size.height * .05,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(
                  size.width * .05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: size.width * .05,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * .22,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(
                  size.width * .05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.locationModel.hotel,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          widget.locationModel.address,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 12,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * .4,
              left: 0,
              right: 0,
              child: Container(
                height: size.height,
                padding: EdgeInsets.only(
                  top: size.height * .05,
                  left: size.width * .05,
                  right: size.width * .05,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          40,
                        ),
                        topRight: Radius.circular(
                          40,
                        ))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconTextBox(
                            title: 'Free Wifi',
                            icon: Icons.wifi,
                          ),
                          IconTextBox(
                            title: 'Sound Beach',
                            icon: Icons.beach_access,
                          ),
                          IconTextBox(
                            title: 'Free Wifi',
                            icon: Icons.wifi,
                          ),
                          IconTextBox(
                            title: 'Bar & Resturent',
                            icon: Icons.restaurant,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * .025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailsBox(
                            icon: Icons.restaurant,
                            rating: '8.0/10.0',
                            type: 'Booking',
                            note: 'Hotel & 30 review',
                          ),
                          DetailsBox(
                            icon: Icons.message,
                            rating: '4.0/5.0',
                            type: 'HodelOut',
                            note: 'Hotel & 30 review',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * .025,
                      ),
                      Text(
                        widget.locationModel.description,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: size.height * .025,
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Container(
                            height: size.height * .3,
                            child: ListView.builder(
                                itemCount: locationList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
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
                                  );
                                }),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
