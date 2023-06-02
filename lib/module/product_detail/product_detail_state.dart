part of product_detail;

class _ProductDetailViewState extends TTState<_ProductDetailModel, _ProductDetailView> {
  @override
  Widget buildWithModel(BuildContext context, _ProductDetailModel model) {
    return Scaffold(
      appBar: MyAppBar(
        context,
        leading: IconButton(
          iconSize: 24,
          onPressed: model.goBack,
          icon: Image.asset(Id.backward),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height(20),
            buildCarousel(),
            height(14.76),
            buildProductInfo(),
            height(24.52),
            TTBottomAddButton(
              'ADD TO BASKET',
              onAddPressed: model.onAddToCartClick,
              onFavoritePressed: model.onFavoriteClick,
            ),
            height(29.48),
            buildProductDetail(),
            height(69),
            buildSuggest(),
            height(22),
            AppFooter(pageContext: context),
          ],
        ),
      ),
    );
  }

  buildSuggest() {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 40,
          child: Center(
            child: TText(
              'YOU MAY ALSO LIKE',
              style: St.title_18_regular,
            ),
          ),
        ),
        Image.asset(Id.devider),
        buildSuggestWidget(
          onFavoritePressed: model.onFavoriteClick,
          onItemPressed: model.onSuggestItemPressed,
        ),
      ],
    );
  }

  buildProductDetail() {
    return Padding(
      padding: symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TText(
            'MATERIALS',
            style: St.title_18_regular.copyWith(
              color: Cl.title_active,
              fontSize: 16,
            ),
          ),
          height(6.25),
          Text(
            'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.',
            style: St.body_M_14_regular.copyWith(
              color: Cl.label,
              fontSize: 16,
            ),
            softWrap: true,
          ),
          height(16),
          TText(
            'CARE',
            style: St.title_18_regular.copyWith(
              color: Cl.title_active,
              fontSize: 16,
            ),
          ),
          height(6.25),
          Text(
            'To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment.',
            style: St.body_M_14_regular.copyWith(
              color: Cl.label,
              fontSize: 16,
            ),
            softWrap: true,
          ),
          height(13.77),
          buildWarningCareItem(icon: Id.do_not_bleach, content: 'Do not use bleach'),
          buildWarningCareItem(icon: Id.do_not_tumble_dry, content: 'Do not tumble dry'),
          buildWarningCareItem(icon: Id.do_not_wash, content: 'Dry clean with tetrachloroethylene'),
          buildWarningCareItem(icon: Id.iron_low_temperature, content: 'Iron at a maximum of 110ºC/230ºF'),
          height(26.65),
          TText(
            'CARE',
            style: St.title_18_regular.copyWith(
              color: Cl.title_active,
              fontSize: 16,
            ),
          ),
          height(21.35),
          buildCareList(),
        ],
      ),
    );
  }

  Widget buildCareList() {
    return Column(
      children: [
        buildCareItem(
          index: 0,
          icon: Id.shipping,
          title: 'Free Flat Rate Shipping',
          children: [
            TText(
              'Estimated to be delivered on\n09/11/2021 - 12/11/2021.',
              style: St.body_M_14_regular.copyWith(color: Cl.label),
            ),
            height(8),
          ],
        ),
        Divider(
          height: 1,
          color: Cl.label.withOpacity(0.2),
          indent: 32.5,
        ),
        buildCareItem(
          index: 1,
          icon: Id.tag,
          title: 'COD Policy',
          children: [
            Text(
              'COD Policy COD Policy COD Policy COD Policy',
              style: St.body_M_14_regular.copyWith(
                color: Cl.label,
              ),
            ),
            height(8),
          ],
        ),
        Divider(
          height: 1,
          color: Cl.label.withOpacity(0.2),
          indent: 32.5,
        ),
        buildCareItem(
          index: 2,
          icon: Id.refresh,
          title: 'Return Policy',
          children: [
            Text(
              'Return Policy Return Policy Return Policy Return Policy Return Policy',
              style: St.body_M_14_regular.copyWith(color: Cl.label),
            ),
            height(8),
          ],
        ),
      ],
    );
  }

  buildCareItem({
    required int index,
    required String icon,
    required String title,
    required List<Widget> children,
  }) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: only(left: 0),
        childrenPadding: only(left: 32.5),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.centerLeft,
        onExpansionChanged: (value) => model.onExpansionChanged(index, value),
        title: Row(
          children: [
            Image.asset(icon),
            width(10.5),
            Expanded(
              child: TText(
                title,
                style: St.body_M_14_regular.copyWith(color: Cl.title_active),
              ),
            ),
          ],
        ),
        trailing: Transform.rotate(
          angle: model.isExpanded(index) ? 3 : 0,
          child: Image.asset(
            Id.down,
            color: Cl.body.withOpacity(0.5),
          ),
        ),
        children: children,
      ),
    );
  }

  buildWarningCareItem({
    required String icon,
    required String content,
  }) {
    return Padding(
      padding: only(bottom: 16),
      child: Row(
        children: [
          Image.asset(icon),
          width(12.5),
          TText(
            content,
            style: St.body_M_14_regular.copyWith(color: Cl.label),
          ),
        ],
      ),
    );
  }

  buildProductInfo() {
    return SizedBox(
      height: 140,
      child: Padding(
        padding: symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TText(
                    'MOHAN',
                    style: St.title_18_regular.copyWith(
                      color: Cl.title_active,
                      fontSize: 16,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: model.onShareClick,
                  child: Container(
                    padding: only(left: 16, bottom: 8),
                    child: Image.asset(Id.share),
                  ),
                ),
              ],
            ),
            TText(
              'Recycle Boucle Knit Cardigan Pink',
              style: St.body_L_16_regular.copyWith(color: Cl.label),
            ),
            height(8),
            TText(
              '\$120',
              style: St.body_L_16_regular.copyWith(
                color: Cl.secondary,
                fontSize: 18,
              ),
            ),
            height(18.40),
            SizedBox(
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildColorSelect(),
                  width(35.24),
                  buildSizeSelect(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSizeSelect() {
    return Flexible(
      child: Row(
        children: [
          TText(
            'Size',
            style: St.body_S_12_regular.copyWith(
              color: Cl.label,
            ),
          ),
          width(15),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: only(right: 6),
              itemBuilder: ((context, index) => buildSizeItem(
                    model.lstSizeTmp[index],
                    onSizeItemPressed: () => model.onSizeSelected(index),
                    isSelected: model.sizeSelected == index,
                  )),
              separatorBuilder: ((context, index) => width(6)),
              itemCount: model.lstSizeTmp.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  buildColorSelect() {
    return Flexible(
      child: Row(
        children: [
          TText(
            'Color',
            style: St.body_S_12_regular.copyWith(
              color: Cl.label,
            ),
          ),
          width(8.29),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: only(right: 6),
              itemBuilder: ((context, index) => buildColorItem(
                    model.lstColorTmp[index].toColor(),
                    onColorItemPressed: () => model.onColorItemClick(index),
                    isSelected: model.colorSelected == index,
                  )),
              separatorBuilder: ((context, index) => width(12)),
              itemCount: model.lstColorTmp.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  buildCarousel() {
    return Column(
      children: [
        Padding(
          padding: symmetric(horizontal: 16),
          child: CarouselSlider(
            carouselController: model.imgControler,
            options: CarouselOptions(
              viewportFraction: 1,
              padEnds: false,
              onPageChanged: model.onPageChanged,
              // disableCenter: true,
              height: 460,
            ),
            items: List.generate(
              model.imgMaxLength,
              (index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Picture.category_full_sample),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: only(bottom: 12, right: 12),
                            child: TTRadiusButton(
                              radius: 36,
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: 36.borderRadius(),
                                  color: Cl.black.withOpacity(0.35),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    Id.resize,
                                    color: Cl.off_white,
                                  ),
                                ),
                              ),
                              onTap: model.onZoomClick,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        height(13.25),
        SizedBox(
          height: 8,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                model.imgMaxLength,
                (index) => Padding(
                  padding: symmetric(horizontal: 2.5),
                  child: model.pageIndex == index
                      ? Image.asset(Id.indicator_selected_grey)
                      : Image.asset(Id.indicator_unselected_grey),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
