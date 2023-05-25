part of home_menu;

class _HomeMenuViewState extends TTState<_HomeMenuModel, _HomeMenuView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeMenuModel model) {
    return Scaffold(
      backgroundColor: Cl.white,
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: model.exitPressed,
          icon: Image.asset(Id.close),
        ),
        height(20),
        buildTabGroup(),
        Expanded(
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            controller: model.controller,
            itemBuilder: ((context, index) => createHomeMenuTabContent()),
          ),
        ),
      ],
    );
  }

  Widget buildTabGroup() {
    return SingleChildScrollView(
      padding: only(left: 16),
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          Row(
            children: List.generate(
              model.tabLabels.length,
              (index) => tabLabelButton(
                index: index,
                labelText: model.tabLabels[index],
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: only(bottom: 4),
                  height: 0.5,
                  child: Divider(
                    color: Cl.place_holder_button.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabLabelButton({required int index, required String labelText}) {
    return Padding(
      padding: only(right: 50),
      child: Stack(
        children: [
          GestureDetector(
            child: SizedBox(
              height: 35,
              child: TText(
                labelText,
                style: St.subtitle_14_regular,
              ),
            ),
            onTap: () => model.onTabChanged(index),
          ),
          height(20),
          index == model.tabIndex
              ? Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: top(4.5),
                            height: 0.5,
                            child: const Divider(color: Cl.secondary),
                          ),
                          Center(child: Image.asset(Id.tab_indicator_big)),
                        ],
                      ),
                    ],
                  ),
                )
              : empty(),
        ],
      ),
    );
  }
}
