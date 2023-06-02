part of home_menu_tab_content;

class _HomeMenuTabContentViewState extends TTState<_HomeMenuTabContentModel, _HomeMenuTabContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeMenuTabContentModel model) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: fromLTRB(0, 20, 0, 39.31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(height: 500, color: Colors.blue),
            buildCategories(),
            height(26.65),
            buildContact(),
          ],
        ),
      ),
    );
  }

  Widget buildCategories() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: model.categoties.length,
      itemBuilder: ((context, index) {
        return Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            collapsedIconColor: Colors.pink,
            tilePadding: only(left: 16),
            childrenPadding: only(left: 16),
            onExpansionChanged: (value) => model.onExpansionChanged(index, value),
            title: TText(
              model.categoties[index],
              style: St.body_L_16_regular,
            ),
            trailing: Padding(
              padding: only(right: 25.42),
              child: Transform.rotate(
                angle: model.isExpanded(index) ? 3 : 0,
                child: Image.asset(
                  Id.down,
                  color: Cl.body.withOpacity(0.5),
                ),
              ),
            ),
            children: List.generate(
              model.catItems.length,
              (index) => ListTile(
                onTap: model.onCateItemPressed,
                title: TText(
                  model.catItems[index],
                  style: St.body_L_16_regular,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget buildContact() {
    return Padding(
      padding: symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: model.onCallPressed,
            child: SizedBox(
              height: 35,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Id.call),
                  width(16),
                  TText(
                    '(786) 713-8616',
                    style: St.body_L_16_regular.copyWith(color: Cl.label),
                  ),
                ],
              ),
            ),
          ),
          height(15.61),
          InkWell(
            onTap: model.onStoreLocationPressed,
            child: SizedBox(
              height: 35,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Id.location),
                  width(16),
                  TText(
                    'Store location',
                    style: St.body_L_16_regular.copyWith(color: Cl.label),
                  ),
                ],
              ),
            ),
          ),
          height(27.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(Id.devider)],
          ),
          height(23.94),
          buildSocial(),
        ],
      ),
    );
  }
}
