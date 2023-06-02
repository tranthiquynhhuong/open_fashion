part of home_arrival_tab_content;

class _HomeArrivalTabContentModel extends TTChangeNotifier<_HomeArrivalTabContentView> {
  onItemClick(int ind) {
    push(context, createProductDetail());
  }
}
