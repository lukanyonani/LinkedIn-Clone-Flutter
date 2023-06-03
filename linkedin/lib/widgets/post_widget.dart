import 'package:flutter/material.dart';
import 'package:linkedin/constants.dart';

class PersonalPost extends StatelessWidget {
  final String profileImage;
  final String companyName;
  final String bio;
  final String postText;
  final String postImage;

  final String numberOfLikes;
  final String numberOfReposts;
  final String numberOfComments;

  const PersonalPost({
    super.key,
    required this.profileImage,
    required this.companyName,
    required this.bio,
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(profileImage),
                  radius: 28,
                )),
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
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 175,
                      ),
                      const Icon(Icons.more_vert)
                    ],
                  ),
                  Text(
                    bio,
                    style: const TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const Row(
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
        Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10),
          child: Row(
            children: [
              Text(
                postText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        Image.asset(postImage),
        const SizedBox(
          height: 12,
        ),
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
