
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});


  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Good Morning!\nShivangi',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCategoryItem('All', true, 'path_to_all_image'),
                _buildCategoryItem('Dogs', false, 'path_to_dogs_image'),
                _buildCategoryItem('Cats', false, 'path_to_cats_image'),
                _buildCategoryItem('Rabbits', false, 'path_to_rabbits_image'),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: <Widget>[
              _buildPetCard('Kuggu', '2 Years', 'Mixed Breed | Adult', '27 Km Away'),
              _buildPetCard('Jolly', '2 Years', 'Mixed Breed | Adult', '27 Km Away'),
              _buildPetCard('Molly', '2 Years', 'Mixed Breed | Adult', '27 Km Away'),
              _buildPetCard('Molly', '2 Years', 'Mixed Breed | Adult', '27 Km Away'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, bool selected, String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: selected ? Colors.pink : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 20,
              height: 20,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: selected ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPetCard(String name, String age, String breed, String distance) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.pets),
        title: Text(name),
        subtitle: Text('$age\n$breed\n$distance'),
        trailing: Icon(Icons.favorite_border),
      ),
    );
  }
}