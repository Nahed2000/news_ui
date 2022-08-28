import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/screen/details_screen.dart';

class BrakingNewsCard extends StatefulWidget {
  final NewsData data;

  const BrakingNewsCard({Key? key, required this.data}) : super(key: key);

  @override
  State<BrakingNewsCard> createState() => _BrakingNewsCardState();
}

class _BrakingNewsCardState extends State<BrakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(data: widget.data),
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: NetworkImage(
              widget.data.urlToImage!,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.data.author!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
