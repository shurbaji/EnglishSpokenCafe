import 'dart:convert';

import 'package:flutter/foundation.dart';

class SinglePost {
  final String featuredImage, title, date, url, content, avatarURL, authorName;

  SinglePost({
    required this.authorName,
    required this.content,
    required this.avatarURL,
    required this.featuredImage,
    required this.title,
    required this.date,
    required this.url,
  });

  factory SinglePost.fromJson(Map<String, dynamic> json) {
    return SinglePost(
      authorName: json['author']['name'],
      avatarURL: json['author']['avatar_URL'],
      content: json['content'],
      date: json['date'],
      featuredImage: json['featured_image'],
      title: json['title'],
      url: json['URL'],
    );
  }
}
List<SinglePost> parsePosts(response) {
  final parsed = jsonDecode(response)['posts'].cast<Map<String, dynamic>>();
  return parsed.map<SinglePost>((json) => SinglePost.fromJson(json)).toList();
}
