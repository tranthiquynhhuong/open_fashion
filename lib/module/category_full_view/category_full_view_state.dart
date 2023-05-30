part of category_full_view;

class _CategoryFullViewViewState extends TTState<_CategoryFullViewModel, _CategoryFullViewView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryFullViewModel model) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(color: Colors.blue, height: 150.0);
        },
        childCount: 3,
      ),
    );
  }
}
