part of 'news_bloc.dart';

abstract class NewsEvents extends Equatable {
  const NewsEvents();

  @override
  List<Object?> get props => [];
}

class FetchNewsEvent extends NewsEvents {
  final int pageNumber;

  FetchNewsEvent(this.pageNumber);
  @override
  List<Object> get props => [pageNumber];
}
