import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/widget/card_breaking_news.dart';
import 'package:news_app/widget/recent_news_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'News App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Breaking News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              CarouselSlider.builder(
                itemCount: NewsData.breakingNewsData.length,
                itemBuilder: (context, index, realIndex) => BrakingNewsCard(
                  data: NewsData.breakingNewsData[index],
                ),
                options: CarouselOptions(
                    enableInfiniteScroll: false,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    clipBehavior: Clip.antiAlias),
              ),
              const SizedBox(height: 20),
              const Text(
                'Recent News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: NewsData.recentNewsData
                    .map((data) => RecentNewsListTile(data: data))
                    .toList(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.orange.shade900,
          backgroundColor: Colors.black,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed),
              activeIcon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              activeIcon: Icon(Icons.home),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
