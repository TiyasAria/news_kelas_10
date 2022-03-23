import 'package:flutter/material.dart';
import 'package:news_kelas_10/model/articles.dart';
import 'package:news_kelas_10/service/data_service.dart';
import 'package:news_kelas_10/utils/utils.dart';

import 'news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    News news = News();
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image:const DecorationImage(
                image: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5603AQE01nSH7JQImA/profile-displayphoto-shrink_800_800/0/1617547764581?e=1652918400&v=beta&t=fSOLjOP80XmVSFACIbb2vjBnJasy-72nVvU0MdEiWxY'
                ))
          ),
          width: 10,
          margin:  EdgeInsets.all(5),
        ) ,
        title: Text('Good Morning', style: titleArticle.copyWith(
          fontSize: 20
        ),),
        actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark , color: Colors.blue,)
            )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: news.getNews(),
          builder: (context, snapshot) => snapshot.data != null
      ? NewsPage(snapshot.data  as List<Article>)
              //NewsPage()
              : const Center(child: CircularProgressIndicator())
      )
      );
  }
}
