import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Memories - 2023',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StackedCardCarousel(items: [
        buildCard(
            'https://www.keralatourism.org/images/enchanting_kerala/large/onam_celebrating_kerala20200811130917_1014_1.jpg',
            'Onam Festival',
            '20.08.2023'),
        buildCard(
            'https://rvce.ac.in/wp-content/uploads/2023/01/RVCE-Pongal-2023-Cover.jpg',
            'Pongal Festival',
            '15.01.2023'),
        buildCard(
            'https://cdn.siasat.com/wp-content/uploads/2023/11/2023_11img12_Nov_2023_PTI11_12_2023_000480B-scaled.jpg',
            'Diwali Festival',
            '09.11.2023'),
        buildCard(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPUi1pxvCxa4R7WvUNsDtd8RPuZNyqqo2iA&s',
            'Karthigai Deepam Festival',
            '26.11.2023'),
        buildCard(
            'https://akm-img-a-in.tosshub.com/indiatoday/images/photo_gallery/202302/ap23036150228844-.jpg?VersionId=bbfUGVZgu4ZMHoUAcC1JYfVHba41JN93&size=686:*',
            'Thaipusam Festival',
            '05.02.2023'),
      ]),
    );
  }

  Card buildCard(img, fest, date) {
    return Card(
      margin: EdgeInsets.all(15),
      color: Colors.purple,
      child: Column(
        children: [
          Container(
            height: 350,
            width: 350,
            color: Colors.red,
            child: Image.network(
              img,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            fest,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            date,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
