part of category;

class _CategoryViewState extends TTState<_CategoryModel, _CategoryView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: MyAppBar(context),
      body: SafeArea(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height(17),
        buildControlMenu(),
        height(12),
        buildSelecList(),
        height(6),
        Expanded(child: buildCategoryListView()),
      ],
    );
  }

  Widget buildCategoryListView() {
    return Container(
      color: Colors.amber.withOpacity(0.5),
    );
  }

  Widget buildSelecList() {
    return Padding(
      padding: symmetric(horizontal: 16),
      child: selectWrap(
        listSelect: model.lstSelectTmp,
        onCloseClick: model.onSelectItemClose,
      ),
    );
  }

  Widget buildControlMenu() {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: TText(
                '4500 APPAREL',
                style: St.body_M_14_regular,
              ),
            ),
            InkWell(
              borderRadius: 33.borderRadius(),
              onTap: model.onMenuPressed,
              child: Container(
                padding: only(left: 15.53, right: 9.25),
                height: 36,
                decoration: BoxDecoration(
                  color: Cl.c4c4c4.withOpacity(0.1),
                  borderRadius: 33.borderRadius(),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TText(
                      'New',
                      style: St.body_S_12_regular.copyWith(
                        color: Cl.label,
                        fontSize: 13,
                      ),
                    ),
                    width(3),
                    Image.asset(Id.dropdown),
                  ],
                ),
              ),
            ),
            width(8),
            InkWell(
              borderRadius: 18.borderRadius(),
              onTap: model.onViewModeChanged,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: Cl.c4c4c4.withOpacity(0.1),
                  borderRadius: 18.borderRadius(),
                ),
                child: Center(
                  child: Image.asset(
                    iconViewMode(),
                    color: Cl.grey_14142b.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            width(8),
            InkWell(
              borderRadius: 18.borderRadius(),
              onTap: model.onFilterPressed,
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: Cl.c4c4c4.withOpacity(0.1),
                  borderRadius: 18.borderRadius(),
                ),
                child: Center(
                  child: Image.asset(
                    Id.filter,
                    color: model.isHaveFilter ? Cl.secondary : Cl.grey_14142b.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String iconViewMode() {
    switch (model.viewMode) {
      case CategoryViewMode.grid:
        return Id.grid_view;
      case CategoryViewMode.list:
        return Id.listview;
      case CategoryViewMode.full:
        return Id.gallery;
      default:
        return Id.grid_view;
    }
  }
}
