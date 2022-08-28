import 'package:flutter/material.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/screen/details_screen.dart';

class RecentNewsListTile extends StatefulWidget {
  const RecentNewsListTile({Key? key, required this.data}) : super(key: key);
  final NewsData data;

  @override
  State<RecentNewsListTile> createState() => _RecentNewsListTileState();
}

class _RecentNewsListTileState extends State<RecentNewsListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(data: widget.data),
          )),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(widget.data.urlToImage!),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
                flex: 5,
                child: Column(
                  children: [
                    Text(
                      widget.data.title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      widget.data.content!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white60),
                    ),
                    const SizedBox(height: 8),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
