import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_feeder/utils/extension/hover_extension.dart';
import 'dart:html' as html;

class Article {
  final String name;
  final String imageUrl;
  final String articelink;

  Article({
    required this.name,
    required this.imageUrl,
    required this.articelink,
  });
}

class TakeCareGrid extends StatelessWidget {
  final List<Article> Articles = [
    Article(
      name: 'How to take care of pets',
      imageUrl:
          'https://smb.ibsrv.net/imageresizer/image/blog_images/1200x1200/19253/92083/0559861001545258144.jpg',
      articelink:
          "https://timesofindia.indiatimes.com/readersblog/how-to-take-care-of-pets/how-to-take-care-of-pets-47543/",
    ),
    Article(
      name: '25 Dog Care Tips For Pet Parents',
      imageUrl:
          'https://images.unsplash.com/photo-1543466835-00a7907e9de1?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      articelink:
          "https://www.forbes.com/advisor/pet-insurance/pet-care/dog-care-tips/",
    ),
    Article(
      name: '10 Ways to keep you dog Happy and Heathly',
      imageUrl:
          'https://th.bing.com/th/id/OIP.6yG87GyXQKt2hANTpxLhNwHaEH?rs=1&pid=ImgDetMain',
      articelink:
          "https://www.morrisanimalfoundation.org/article/dog-health-resolution",
    ),
    Article(
      name: 'What Your Dog’s Behavior Means',
      imageUrl:
          'https://static01.nyt.com/images/2022/05/17/well/12-Well-NL-Dogs/12-Well-NL-Dogs-jumbo.jpg?quality=75&auto=webp',
      articelink: "https://www.nytimes.com/2022/05/12/well/dog-behavior.html",
    ),
    Article(
      name: 'How to Choose a Healthy Dog Food',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeQTwfZVHeHqRt1KmMNQ499SjD7ux6lwTg3nEaUf_t50XjVHH2joA5up0r5QfO3vfJMVQ&usqp=CAU',
      articelink:
          "https://www.purina.com/articles/dog/health/nutrition/how-to-choose-a-healthy-dog-food",
    ),
    Article(
      name: 'Do Different Dog Breeds Learn Differently?',
      imageUrl:
          'https://www.animalbehaviorcollege.com/wp-content/uploads/2018/04/do-different-dog-breeds-learn-differently.jpg',
      articelink:
          "https://www.animalbehaviorcollege.com/blog/pet-training/do-different-dog-breeds-learn-differently/",
    ),
    Article(
      name: 'Learn to identify the Breeds',
      imageUrl:
          'https://th.bing.com/th/id/OIP.6QsBWWPADJDikTxGJTwSTgHaEZ?w=304&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      articelink:
          "https://www.wikihow.pet/Learn-Breeds-of-Dogs",
    ),
    Article(
      name: "Best Dog Food: How to know What's right for your Dog",
      imageUrl:
          'https://blog.homesalive.ca/hubfs/Blog%20Images%2025-1-%202021/Webp.net-compress-image-Jan-25-2021-07-01-01-50-AM.jpg',
      articelink:
          "https://www.akc.org/expert-advice/nutrition/choosing-right-dog-food/",
    ),
    Article(
      name: 'How to Socialize Your Dog: 11 Tips for Training Dogs to Behave',
      imageUrl:
          'https://images.ctfassets.net/3s5io6mnxfqz/7f3j4Ju51gu8wsONMNn2Tb/c8bc183ab9198c0ddf5164cf623b942f/AdobeStock_349562719.jpeg?w=1920',
      articelink:
          "https://www.masterclass.com/articles/how-to-socialize-your-dog",
    ),
    Article(
      name: 'How to Help A Dog That’s Missed Early Socialization',
      imageUrl:
          'https://www.preventivevet.com/hs-fs/hubfs/dog%20looking%20at%20something%20in%20the%20distance%20600%20canva.jpg?width=900&name=dog%20looking%20at%20something%20in%20the%20distance%20600%20canva.jpg',
      articelink:
          "https://www.preventivevet.com/dogs/how-to-help-adult-dog-with-socialization",
    ),
    // Add more Articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.9,
        crossAxisCount: 5, // Number of columns
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: Articles.length,
      itemBuilder: (BuildContext context, int index) {
        return ArticleItem(article: Articles[index]).translateOnHover;
      },
    );
  }
}

class ArticleItem extends StatelessWidget {
  final Article article;

  ArticleItem({required this.article});

  void openInWindow(String uri, String name) {
    html.window.open(uri, name);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        openInWindow(article.articelink, "");
      },
      child: Card(
        elevation: 2.0,
        child: Column(
          children: [
            Image.network(article.imageUrl,
                width: double.infinity, height: 150, fit: BoxFit.fill),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                article.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
