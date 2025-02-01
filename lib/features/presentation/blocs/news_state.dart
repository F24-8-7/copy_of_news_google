part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  final String? category;
  final String? query;

  const NewsState({
    this.category,
    this.query,
  });

  @override
  List<Object?> get props => [category, query];
}

class NewsInitial extends NewsState {
  const NewsInitial() : super();
}

class NewsLoading extends NewsState {
  const NewsLoading({
    super.category,
    super.query,
  });
}

class NewsLoaded extends NewsState {
  final List<Article> articles;

  const NewsLoaded({
    required this.articles,
    super.category,
    super.query,
  });

  @override
  List<Object?> get props => [articles, category, query];
}

class NewsEmpty extends NewsState {
  const NewsEmpty({
    super.category,
    super.query,
  });
}

class NewsError extends NewsState {
  final String message;

  const NewsError({
    required this.message,
    super.category,
    super.query,
  });

  @override
  List<Object?> get props => [message, category, query];
}