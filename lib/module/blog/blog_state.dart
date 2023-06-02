part of blog;

class _BlogViewState extends TTState<_BlogModel, _BlogView> {
  @override
  Widget buildWithModel(BuildContext context, _BlogModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      appBar: MyAppBar(context),
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        height(29),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TText('BLOG', style: St.title_18_regular),
              Image.asset(Id.devider),
            ],
          ),
        ),
        height(20),
        SizedBox(
          height: 32,
          child: ListView.separated(
            padding: symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: model.blogCategories.length,
            itemBuilder: ((context, index) => buildBlogCatChip(index)),
            separatorBuilder: ((context, index) => width(12)),
          ),
        ),
        height(16),
        Expanded(child: buildTabView()),
      ],
    );
  }

  Widget buildTabView() {
    return PageView.builder(
      itemCount: model.blogCategories.length,
      itemBuilder: buildListBlog,
      physics: const NeverScrollableScrollPhysics(),
      controller: model.pageController,
    );
  }

  Widget buildListBlog(BuildContext ctx, int index) {
    return ListView.separated(
      padding: only(top: 16),
      itemCount: 5,
      separatorBuilder: ((context, index) => height(28)),
      itemBuilder: ((context, index) {
        if (index == 4) {
          return Column(
            children: [
              buildBlogItem(context, index),
              Padding(
                padding: only(top: 27.31, bottom: 38.24),
                child: TTSubmitIconButton(
                  'LOAD MORE',
                  icon: Image.asset(Id.plus),
                  isReverseIcon: true,
                  isBlack: false,
                  onPressed: model.onLoadMore,
                ),
              ),
              Padding(
                padding: only(top: 13.31),
                child: AppFooter(
                  pageContext: context,
                  onBlogPressed: () => pushReplace(ctx, createBlog()),
                ),
              ),
            ],
          );
        }
        return buildBlogItem(context, index);
      }),
    );
  }

  Widget buildBlogItem(BuildContext context, int index) {
    return Padding(
      padding: symmetric(horizontal: 16),
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: () {},
            child: Stack(
              children: [
                Image.asset(Picture.blog_banner_sample),
                Positioned.fill(
                  child: Container(
                    height: 200,
                    decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                        colors: [Cl.black_111111, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.35],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: 0.borderRadius(),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 13.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: symmetric(horizontal: 14),
                        child: TText(
                          '2021 STYLE GUIDE: THE BIGGEST FALL TRENDS',
                          textAlign: TextAlign.left,
                          style: St.subtitle_14_regular.copyWith(color: Cl.off_white),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: model.onBlogPressed,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 2.68,
                  child: IconButton(
                    alignment: Alignment.topRight,
                    icon: Image.asset(Id.bookmark),
                    onPressed: model.bookmarkBlog,
                  ),
                ),
              ],
            ),
          ),
          height(8),
          SizedBox(
            height: 24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: buildListHashTag()),
                width(10),
                TText(
                  '4 days ago',
                  style: St.body_S_12_regular.copyWith(color: Cl.place_holder_button),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListHashTag() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: ((context, index) {
        return Container(
          margin: only(right: 10),
          child: hashtagChip('Hashtag', padding: symmetric(horizontal: 6, vertical: 2)),
        );
      }),
    );
  }

  Widget buildBlogCatChip(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Cl.input_bg,
        borderRadius: 30.borderRadius(),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: 30.borderRadius(),
          onTap: () => model.onTabChange(index),
          child: Padding(
            padding: symmetric(horizontal: 10, vertical: 8),
            child: Center(
              child: TText(
                model.blogCategories[index],
                style: St.body_M_14_regular,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
