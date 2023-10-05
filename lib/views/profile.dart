import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                color: Colors.purple,
                elevation: 10,
                child: _imageCard(),
              ),
            ),
             Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 githubButton(),
                 xButton(),
                 linkedInButton()
               ],
             )
          ],
        ),
      ),
    );
  }
}

Widget _imageCard() {
  return const Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Image(
        image: AssetImage(
          'assets/mike.png',
        ),
        height: 500,
        width: 300,
      ),
      SizedBox(
        width: 18,
      ),
      Flexible(
          child: Text(
        'Abu Michael Obeng \n'
            "Software Engineer",
        style: TextStyle(fontSize: 50),
      ))

    ],
  );
}


Widget githubButton() {
  return const SocialMediaButton.github(
    url: "https://github.com/Kwasi48",
    color: Colors.purple,
  );
}
Widget xButton() {
  return const  SocialMediaButton.twitter(
    url: "https://twitter.com/abubonsrah47",
    color: Colors.purple,
  );
}

Widget linkedInButton() {
  return const  SocialMediaButton.linkedin(
    url: "https://www.linkedin.com/in/michael-obeng-abu-08483120b?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BUAcdWAogRWKB1cPZxUusVA%3D%3D",
    color: Colors.purple,
  );
}