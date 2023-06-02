part of home_arrival_tab_content;

class _HomeArrivalTabContentViewState
    extends TTState<_HomeArrivalTabContentModel, _HomeArrivalTabContentView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeArrivalTabContentModel model) {
    return LayoutBuilder(builder: (context, constraints) {
      final w = (constraints.minWidth - 36) / 2;
      return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: symmetric(vertical: 13, horizontal: 13),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 13,
          crossAxisSpacing: 13,
          childAspectRatio: w / 260,
        ),
        itemBuilder: (ctx, ind) {
          return GestureDetector(
            onTap: () => model.onItemClick(ind),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 200,
                  child: Image.asset(Picture.product_sample_1),
                ),
                height(4),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TText(
                        '21WN reversible angora cardigan',
                        style: St.body_S_12_regular.copyWith(color: Cl.body),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                        child: Center(
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
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      );
    });
  }
}
