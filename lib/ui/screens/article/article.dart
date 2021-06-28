import 'package:digital_clinic/ui/screens/article/layouts/body.dart';
import 'package:digital_clinic/ui/screens/article/layouts/image.dart';
import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.share_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ArticleFeatureImage(),
        ArticleBody(),
      ],
    );
  }
}
