part of blog;

class _BlogViewState extends TTState<_BlogModel, _BlogView> {
  @override
  Widget buildWithModel(BuildContext context, _BlogModel model) {
    return const Scaffold(
      body: Text('Blog'),
    );
  }
}
