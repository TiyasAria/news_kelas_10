import 'package:flutter/material.dart';
import 'package:news_kelas_10/model/articles.dart';
import 'package:news_kelas_10/widget/carousel_widget.dart';
import 'package:news_kelas_10/widget/tab_menu.dart';

import '../utils/utils.dart';

class NewsPage extends StatelessWidget {
 final List<Article> article ;
 NewsPage(this.article);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Breaking News' , style: titleHome,)),
          CarouselWidget(article),
          TabMenu(article)
        ],
      ),
    );
  }
}
