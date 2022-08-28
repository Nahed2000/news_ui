// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  final NewsData data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.orange.shade900),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title!,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              data.author!,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(data.urlToImage!),
            ),
            const SizedBox(height: 15),
            Text(
              data.content!,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
