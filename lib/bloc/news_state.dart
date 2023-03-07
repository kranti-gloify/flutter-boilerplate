part of 'news_bloc.dart';

@immutable
abstract class NewsState extends Equatable {}

class NewsLoaddedState extends NewsState {
  final NewsModel model;
  NewsLoaddedState(this.model);
  @override
  List<Object?> get props => [model];

}

class NewsErrorState extends NewsState {
  final String error;

  NewsErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

class NewsLoadingSate extends NewsState {
  NewsLoadingSate();

  @override
  List<Object?> get props => [];
}