import 'package:news_app/models/source.dart';

class Articale{
  Source source;
  String auther;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Articale({
    required this.source,
    required this.auther,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content
  });

}