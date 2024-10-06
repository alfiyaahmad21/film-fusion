import 'package:filmfusion/resources/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';
import '../resources/app_images.dart' as app_images;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body:Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(app_images.moviePoster1),
              Text(
                'Shang chi:Legend of '
                    '\n the Ten Rings',
                style: TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.w700,
                  color: app_colors.sunGlow,
                ),
              ),
              Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Icon(Icons.star,color: app_colors.sunGlow,size: 18,),
                  const SizedBox(width: 6),
                  Text(
                    '4.0 (982)',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.access_time,size: 16,color:app_colors.gainsBoro),
                  const SizedBox(width: 6),
                  Text(
                    '2 hour 5 minutes',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.video_camera_back_outlined, size: 16,color:app_colors.gainsBoro),
                  const SizedBox(width: 6),
                  Text(
                    'Action, Sci-fi',
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
          ),
        ],
      ),
    );
  }
}
