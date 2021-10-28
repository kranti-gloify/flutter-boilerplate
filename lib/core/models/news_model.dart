/// This is the Model Structure for News Response.
///

class NewsModel {
  final String? status;
  final int? totalResults;
  final List? articles;

  const NewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json, int code) {
    return NewsModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: json['articles'],
    );
  }
}
