import 'package:intl/intl.dart';
class Article {
  final int? id;
  final String title;
  final String? description;
  final String? content;
  final String? urlToImage;
  final String url;
  final String source;
  final DateTime publishedAt;
  final String? author;

  Article({
    this.id,
    required this.title,
    this.description,
    this.content,
    this.urlToImage,
    required this.url,
    required this.source,
    required this.publishedAt,
    this.author,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'] ?? '',
      description: json['description'],
      content: json['content'],
      urlToImage: json['urlToImage'],
      url: json['url'] ?? '',
      source: json['source']?['name'] ?? 'Unknown',
      publishedAt:
          DateTime.tryParse(json['publishedAt'] ?? '') ?? DateTime.now(),
      author: json['author'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'urlToImage': urlToImage,
      'url': url,
      'source': {'name': source},
      'publishedAt': publishedAt.toIso8601String(),
      'author': author,
    };
  }

  String get formattedDate {
    return DateFormat.yMMMd().add_jm().format(publishedAt);
  }

  String get formattedDescription {
    return description?.replaceAll(RegExp(r'\[\+\d+ chars\]'), '') ?? '';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Article && runtimeType == other.runtimeType && url == other.url;

  @override
  int get hashCode => url.hashCode;
}
