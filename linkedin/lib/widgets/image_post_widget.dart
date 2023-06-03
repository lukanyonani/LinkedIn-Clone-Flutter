import 'package:flutter/material.dart';
import 'package:linkedin/constants.dart';

class ImagePostWidget extends StatelessWidget {
  final String profileImage;
  final String companyName;
  final String numberOfFollowers;
  final String postText;
  final String postImage;

  final String numberOfLikes;
  final String numberOfReposts;
  final String numberOfComments;

  const ImagePostWidget({
    super.key,
    required this.profileImage,
    required this.companyName,
    required this.numberOfFollowers,
    required this.postText,
    required this.postImage,
    required this.numberOfLikes,
    required this.numberOfReposts,
    required this.numberOfComments,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        //Heading
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(profileImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        companyName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 138,
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  Text(
                    '$numberOfFollowers followers',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  Row(
                    children: [
                      Text(
                        '1d ',
                        style: TextStyle(fontSize: 16, color: AppColors.menu),
                      ),
                      Text(
                        ' - ',
                        style: TextStyle(
                            fontSize: 10,
                            color: AppColors.menu,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.public,
                        size: 16,
                        color: AppColors.menu,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        //Post Text
        Padding(
          padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
          child: Row(
            children: [
              Text(
                postText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        //Image
        Image.asset(postImage),
        const SizedBox(
          height: 12,
        ),
        //Like Section
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 10,
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 12,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(numberOfLikes),
            Expanded(child: Container()),
            Text('$numberOfComments comments - '),
            Text('$numberOfReposts reposts'),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        //
        const Padding(
          padding: EdgeInsets.only(top: 8.0, left: 12.0, right: 12.0),
          child: Divider(
            thickness: 1,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 1,
            ),
            Column(
              children: [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 20,
                  color: Colors.black54,
                ),
                Text('Like')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.chat_bubble_outline,
                  size: 20,
                  color: Colors.black54,
                ),
                Text('Comment')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.repeat_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
                Text('Repost')
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.send,
                  size: 20,
                  color: Colors.black54,
                ),
                Text('Send')
              ],
            ),
            SizedBox(
              width: 1,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
