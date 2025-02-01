import 'dart:convert';
import 'package:copy_of_news_google/features/data/models/article.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class NewsService {
  static const String _apiKey = 'adbe81672b064b2f870cc55d15d2c501';
  static const String _baseUrl = 'https://newsapi.org/v2';
  static const String _cacheKey = 'news_cache';
  static const Duration _cacheDuration = Duration(minutes: 5);

  Future<List<Article>> getTopHeadlines({
    String? category,
    String? query,
    String country = 'us',
    bool useCache = true,
  }) async {
    final cacheKey = '${_cacheKey}_headlines_${category ?? 'all'}_$query';

    if (useCache) {
      final cachedData = await _getCachedData(cacheKey);
      if (cachedData != null) {
        return cachedData;
      }
    }

    final queryParams = {
      'country': country,
      'apiKey': _apiKey,
      if (category != null) 'category': category,
      if (query != null && query.isNotEmpty) 'q': query,
    };

    final uri = Uri.parse('$_baseUrl/top-headlines').replace(queryParameters: queryParams);

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final articles = (json['articles'] as List)
            .map((article) => Article.fromJson(article))
            .toList();

        await _cacheData(cacheKey, articles);
        return articles;
      } else {
        final error = jsonDecode(response.body);
        throw Exception(error['message'] ?? 'Failed to load news');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }

  Future<List<Article>> searchNews(String query) async {
    final cacheKey = '${_cacheKey}_search_$query';
    final cachedData = await _getCachedData(cacheKey);
    if (cachedData != null) {
      return cachedData;
    }

    final uri = Uri.parse('$_baseUrl/everything').replace(
      queryParameters: {
        'q': query,
        'apiKey': _apiKey,
        'sortBy': 'publishedAt',
      },
    );

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final articles = (json['articles'] as List)
            .map((article) => Article.fromJson(article))
            .toList();

        await _cacheData(cacheKey, articles);
        return articles;
      } else {
        final error = jsonDecode(response.body);
        throw Exception(error['message'] ?? 'Failed to search news');
      }
    } catch (e) {
      throw Exception('Network error: ${e.toString()}');
    }
  }

  Future<List<Article>?> _getCachedData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final cachedString = prefs.getString(key);
    final cacheTime = prefs.getInt('${key}_time');

    if (cachedString != null && cacheTime != null) {
      final cacheDateTime = DateTime.fromMillisecondsSinceEpoch(cacheTime);
      if (DateTime.now().difference(cacheDateTime) < _cacheDuration) {
        final cachedData = jsonDecode(cachedString) as List;
        return cachedData.map((item) => Article.fromJson(item)).toList();
      }
    }
    return null;
  }

  Future<void> _cacheData(String key, List<Article> articles) async {
    final prefs = await SharedPreferences.getInstance();
    final articleList = articles.map((article) => article.toJson()).toList();

    await prefs.setString(key, jsonEncode(articleList));
    await prefs.setInt('${key}_time', DateTime.now().millisecondsSinceEpoch);
  }
}