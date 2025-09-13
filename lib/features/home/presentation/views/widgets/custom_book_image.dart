import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        errorWidget: (context, url, error) => Column(
          children: [
            Icon(Icons.error),
            SizedBox(height: 4),
            Text('Not Avalibale Image'),
          ],
        ),
        imageUrl: imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}



//  Container(
//         margin: EdgeInsets.all(6),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           image: DecorationImage(
//             image: NetworkImage(imageUrl),
//             fit: BoxFit.fill,
//           ),
//         ),
//       ),