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
                buildSubmitButton('SUBMIT', width: 132),
                const SizedBox(height: 16),
                buildSubmitButton(
                  'BACK TO HOME',
                  isBlack: false,
                  width: 216,
                ),
                const SizedBox(height: 16),
                buildSubmitIconButton(
                  'SUBMIT',
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                buildSubmitIconButton(
                  'SUBMIT',
                  isBlack: false,
                  icon: Image.asset(Id.shopping_bag),
                ),
                const SizedBox(height: 16),
                buildSubmitIconButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                buildSubmitIconButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  isBlack: false,
                  icon: Image.asset(Id.shopping_bag),
                ),
                const SizedBox(height: 16),
                buildButton('CHAT WITH US'),
                const SizedBox(height: 16),
                buildButton('CHAT WITH US', isBlack: false),
                const SizedBox(height: 16),
                buildSubmitIconButton(
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
                buildSubmitIconButton(
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
                buildSubmitIconButton(
                  'HOME PAGE',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                buildSubmitIconButton(
                  'HOME PAGE',
                  isBlack: false,
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                  ),
                ),
                const SizedBox(height: 16),
                buildBottomButton('ADD NOW'),
                const SizedBox(height: 16),
                buildBottomButton(
                  'SUBMIT',
                  isReverseIcon: true,
                  icon: Image.asset(
                    Id.forward_arrow,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                buildBottomButton(
                  'CHECKOUT',
                  icon: Image.asset(
                    Id.shopping_bag,
                    color: Cl.bg,
                  ),
                ),
                const SizedBox(height: 16),
                buildBottomAddButton(
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
