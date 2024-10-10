import 'package:filmfusion/resources/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';
import '../resources/app_images.dart' as app_images;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,),
      body: const PosterWidget(poster: app_images.moviePoster1, title: 'Shang chi:Legend of '
          '\n the Ten Rings', rating:'4.0 (982)', runtime: '2 hour 5 minutes', genre: 'Action, Sci-fi'),
    );
  }
}

class PosterWidget extends StatelessWidget {
  const PosterWidget({
    required this.poster,
    required this.title,
    required this.rating,
    required this.runtime,
    required this.genre,
    super.key});

  final String poster;
  final String title;
  final String rating;
  final String runtime;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(poster),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: app_colors.sunGlow,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: app_colors.sunGlow,
              size: 18,
            ),
            const SizedBox(width: 6),
            Text(
              rating,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: app_colors.gainsBoro,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.access_time, size: 16, color: app_colors.gainsBoro),
            const SizedBox(width: 6),
            Text(
              runtime,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: app_colors.gainsBoro,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.video_camera_back_outlined, size: 16, color: app_colors.gainsBoro),
            const SizedBox(width: 6),
            Text(
              textAlign:TextAlign.left,
              genre,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                fontStyle: FontStyle.italic,
                color: app_colors.gainsBoro,
              ),
            )
          ],
        )
      ],
    );
  }
}
