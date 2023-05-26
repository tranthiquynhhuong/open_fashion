part of blog_post;

class _BlogPostViewState extends TTState<_BlogPostModel, _BlogPostView> {
  @override
  Widget buildWithModel(BuildContext context, _BlogPostModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: MyBackAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(
                controller: model.controller,
              ),
            ),
            // AppFooter(pageContext: context),
          ],
        ),
      ),
    );
  }
}
