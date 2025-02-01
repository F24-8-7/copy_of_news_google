import 'package:copy_of_news_google/core/imports/imports.dart';
class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookmarkBloc>().add(LoadBookmarksEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookmarkBloc, BookmarkState>(
      listener: (context, state) {
        if (state is BookmarkError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        if (state is BookmarkLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is BookmarkLoaded) {
          if (state.bookmarks.isEmpty) {
            return const _EmptyBookmarksWidget();
          }
          return ListView.builder(
            itemCount: state.bookmarks.length,
            itemBuilder: (context, index) {
              return ArticleCard(article: state.bookmarks[index]);
            },
          );
        }
        return const _EmptyBookmarksWidget();
      },
    );
  }
}

class _EmptyBookmarksWidget extends StatelessWidget {
  const _EmptyBookmarksWidget();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.bookmark_border,
            size: 64,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.no_bookmarks_yet,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.bookmarks_explanation,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
