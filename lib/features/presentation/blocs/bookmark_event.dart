part of 'bookmark_bloc.dart';

abstract class BookmarkEvent extends Equatable {
  const BookmarkEvent();

  @override
  List<Object> get props => [];
}

class AddBookmarkEvent extends BookmarkEvent {
  final Article article;
  const AddBookmarkEvent(this.article);

  @override
  List<Object> get props => [article];
}

class RemoveBookmarkEvent extends BookmarkEvent {
  final Article article;
  const RemoveBookmarkEvent(this.article);

  @override
  List<Object> get props => [article];
}

class LoadBookmarksEvent extends BookmarkEvent {}