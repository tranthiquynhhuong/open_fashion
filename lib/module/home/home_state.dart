part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    double maxW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: MyAppBar(context),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _buildBody(maxW),
      ),
    );
  }

  Widget _buildBody(double maxW) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildBanner(),
            height(27),
            _buildNewArrival(),
            height(37),
            _buildBrand(),
            height(47),
            _buildCollection(),
            height(49),
            _buildJustForYou(),
            height(38),
            _buildTrending(),
            height(22),
            Image.asset(Picture.open_fashion),
            height(20),
            _buildFollow(maxW),
            height(20),
            AppFooter(pageContext: context),
          ],
        ),
      ),
    );
  }

  Widget _buildJustForYou() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxW = constraints.maxWidth;
        return Column(
          children: [
            SizedBox(
              height: 40,
              child: Center(
                child: TText(
                  'JUST FOR YOU',
                  style: St.title_18_regular.copyWith(color: Cl.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
              child: Center(
                child: Image.asset(Id.devider),
              ),
            ),
            height(22.31),
            CarouselSlider(
              carouselController: model.suggestController,
              options: CarouselOptions(
                padEnds: false,
                onPageChanged: model.onPageChanged,
                enableInfiniteScroll: false,
                viewportFraction: 255 / maxW,
                height: 390,
                disableCenter: true,
              ),
              items: List.generate(model.maxLengthListSuggest, (index) => suggestItem()),
            ),
            SizedBox(
              height: 45.42,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    model.maxLengthListSuggest,
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
      },
    );
  }

  Widget suggestItem() {
    return GestureDetector(
      onTap: model.onSuggestItemClick,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 255,
            height: 312,
            child: Image.asset(Picture.product_sample_2),
          ),
          height(4),
          SizedBox(
            width: 255,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48,
                  child: Center(
                    child: TText(
                      'Cashmere Blend Cropped Jacket SW1WJ285-AM',
                      style: St.body_S_12_regular.copyWith(color: Cl.body, height: 1.5),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Center(
                  child: TText(
                    '\$210',
                    style: St.body_M_14_regular.copyWith(
                      color: Cl.secondary,
                      fontSize: 15,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCollection() {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Center(
            child: TText(
              'COLLECTION',
              style: St.title_18_regular.copyWith(color: Cl.black),
            ),
          ),
        ),
        height(16),
        Image.asset(Picture.collection_sample),
        height(40),
        Image.asset(Picture.video_sample),
      ],
    );
  }

  Widget _buildBrand() {
    return Image.asset(Picture.brand);
  }

  Widget _buildNewArrival() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TText(
                  'NEW ARRIVAL',
                  style: St.title_18_regular,
                ),
                Image.asset(Id.devider),
              ],
            ),
          ),
        ),
        height(6),
        DefaultTabController(
          length: 5,
          initialIndex: 0,
          child: Column(
            children: [
              const TabBar(
                labelPadding: zero,
                labelColor: Cl.title_active,
                labelStyle: St.body_M_14_regular,
                unselectedLabelColor: Cl.place_holder_button,
                isScrollable: false,
                indicator: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Id.tab_indicator),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Apparel'),
                  Tab(text: 'Dress'),
                  Tab(text: 'Tshirt'),
                  Tab(text: 'Bag'),
                ],
              ),
              SizedBox(
                height: 556,
                child: TabBarView(
                  children: List.generate(5, ((index) => createHomeArrivalTabContent())),
                ),
              )
            ],
          ),
        ),
        height(14.84),
        RawMaterialButton(
          onPressed: model.goToCategory,
          child: Container(
            padding: all(8),
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                TText(
                  'Explore More',
                  style: St.body_L_16_regular.copyWith(color: Cl.black),
                ),
                width(8),
                Image.asset(Id.forward_arrow),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTrending() {
    return Column(
      children: [
        const SizedBox(
          height: 40,
          child: Center(
            child: TText(
              '@TRENDING',
              style: St.title_18_regular,
            ),
          ),
        ),
        Padding(
          padding: symmetric(vertical: 8),
          child: trendingTagWrap(listChip: model.lstTrendingTmp),
        ),
      ],
    );
  }

  Widget _buildBanner() {
    return RawMaterialButton(
      child: Image.asset(Picture.banner),
      onPressed: () => push(context, createCollection()),
    );
  }

  Widget _buildFollow(double maxW) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const SizedBox(
          height: 40,
          child: TText(
            'FOLLOW US',
            style: St.title_18_regular,
            textAlign: TextAlign.center,
          ),
        ),
        Image.asset(Id.instagram_outline),
        const SizedBox(height: 2),
        SizedBox(
          width: maxW,
          height: maxW,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: all(16),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemBuilder: (context, index) => _buildFollowItem(),
          ),
        ),
      ],
    );
  }

  Widget _buildFollowItem() {
    return RawMaterialButton(
      onPressed: model.onFollowItemPressed,
      child: Stack(
        children: [
          Image.asset(Picture.follow_us_sample),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 40,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    colors: [Cl.black, Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0, 0.5],
                    tileMode: TileMode.clamp,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 9),
                        TText(
                          '@_jihvn',
                          style: St.body_M_14_regular.copyWith(color: Cl.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
