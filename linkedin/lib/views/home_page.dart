import 'package:flutter/material.dart';
import 'package:linkedin/constants.dart';
import 'package:linkedin/widgets/app_bar.dart';
import 'package:linkedin/widgets/post_widget.dart';
import '../widgets/image_post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String postMessage = "Introducing Nani Innovations ...";
    String postMessage1 = "Have you ever felt a deep sense of gratitude...";
    String postMessage2 = "I vividly remember that pivotal moment...";

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBarWidget(),
              const Divider(
                thickness: 10,
                color: AppColors.secondary,
              ),
              ImagePostWidget(
                companyName: 'Nani Innovations',
                numberOfComments: '800',
                numberOfFollowers: '1,000,000',
                numberOfLikes: '1,001,230',
                numberOfReposts: '600',
                postImage: 'assets/images/nanii.png',
                postText: postMessage,
                profileImage: 'assets/images/nanii.png',
              ),
              const Divider(
                thickness: 10,
                color: AppColors.secondary,
              ),
              ImagePostWidget(
                companyName: 'Nani Innovations',
                numberOfComments: '800',
                numberOfFollowers: '1,000,000',
                numberOfLikes: '3,600,000',
                numberOfReposts: '600',
                postImage: 'assets/images/em.jpg',
                postText: postMessage,
                profileImage: 'assets/images/nanii.png',
              ),
              const Divider(
                thickness: 10,
                color: AppColors.secondary,
              ),
              PersonalPost(
                companyName: 'Lukanyo Nani',
                numberOfComments: '1,900',
                bio: 'FullStack Mobile/Web Developer',
                numberOfLikes: '600,000',
                numberOfReposts: '900',
                postImage: 'assets/images/nmu.jpg',
                postText: postMessage1,
                profileImage: 'assets/images/luke.jpg',
              ),
              const Divider(
                thickness: 10,
                color: AppColors.secondary,
              ),
              PersonalPost(
                companyName: 'Lukanyo Nani',
                numberOfComments: '1,900',
                bio: 'FullStack Mobile/Web Developer',
                numberOfLikes: '800,000',
                numberOfReposts: '900',
                postImage: 'assets/images/mss.png',
                postText: postMessage2,
                profileImage: 'assets/images/luke.jpg',
              ),

              ///End
              const Divider(
                thickness: 10,
                color: AppColors.secondary,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.selected,
        unselectedItemColor: AppColors.menu,
        showUnselectedLabels: true,
        elevation: 1,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'My Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Jobs',
          ),
        ],
      ),
    );
  }
}
