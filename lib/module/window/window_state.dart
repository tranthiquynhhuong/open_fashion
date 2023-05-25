part of window;

class _WindowViewState extends TTState<_WindowModel, _WindowView> {
  @override
  Widget buildWithModel(BuildContext context, _WindowModel model) {
    return Scaffold(
      backgroundColor: Cl.bg,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            padding: symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TTSubmitButton('SUBMIT', width: 132),
                const SizedBox(height: 16),
                TTSubmitButton(
                  'BACK TO HOME',
                  isBlack: false,
                  width: 216,
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'SUBMIT',
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'SUBMIT',
                  isBlack: false,
                  icon: Image.asset(Id.shopping_bag),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  isBlack: false,
                  icon: Image.asset(Id.shopping_bag),
                ),
                const SizedBox(height: 16),
                TTButton('CHAT WITH US'),
                const SizedBox(height: 16),
                TTButton('CHAT WITH US', isBlack: false),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'HOME PAGE',
                  icon: RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(
                      Id.forward_arrow,
                      color: Cl.bg,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'HOME PAGE',
                  isBlack: false,
                  icon: RotatedBox(
                    quarterTurns: 2,
                    child: Image.asset(
                      Id.forward_arrow,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'HOME PAGE',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                TTSubmitIconButton(
                  'HOME PAGE',
                  isBlack: false,
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                  ),
                ),
                const SizedBox(height: 16),
                TTBottomButton('ADD NOW'),
                const SizedBox(height: 16),
                TTBottomButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                TTBottomButton(
                  'CHECKOUT',
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                TTBottomAddButton(
                  'ADD TO BASKET',
                  onAddPressed: () => debugPrint('Add Pressed'),
                  onFavoritePressed: (() => debugPrint('Favorite Pressed')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
