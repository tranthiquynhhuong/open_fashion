part of category_list_view;

class _CategoryListViewViewState extends TTState<_CategoryListViewModel, _CategoryListViewView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryListViewModel model) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(color: Colors.amber, height: 150.0);
        },
        childCount: 3,
      ),
    );
  }
}
