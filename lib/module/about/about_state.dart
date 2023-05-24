part of about;

class _AboutViewState extends TTState<_AboutModel, _AboutView> {
  @override
  Widget buildWithModel(BuildContext context, _AboutModel model) {
    return const Scaffold(
      body: Text('About'),
    );
  }
}
