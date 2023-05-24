part of contact;

class _ContactViewState extends TTState<_ContactModel, _ContactView> {
  @override
  Widget buildWithModel(BuildContext context, _ContactModel model) {
    return const Scaffold(
      body: Text('Contact'),
    );
  }
}
