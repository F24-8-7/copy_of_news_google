part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  const NewsEvent();

  @override
  List<Object?> get props => [];
}

class FetchNewsEvent extends NewsEvent {
  final String? category;
  final String? query;

  const FetchNewsEvent({
    this.category,
    this.query,
  });

  @override
  List<Object?> get props => [category, query];
}

class SearchNewsEvent extends NewsEvent {
  final String query;

  const SearchNewsEvent(this.query);

  @override
  List<Object> get props => [query];
}

class RefreshNewsEvent extends NewsEvent {
  const RefreshNewsEvent();
}