import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/ui/tt_edge_insets.p.dart';

class Pagination extends StatefulWidget {
  const Pagination({
    super.key,
    required this.numOfPages,
    required this.selectedPage,
    required this.pagesVisible,
    required this.onPageChanged,
  });

  final int numOfPages;
  final int selectedPage;
  final int pagesVisible;
  final Function onPageChanged;

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  late int _startPage;
  late int _endPage;

  @override
  void initState() {
    super.initState();
    _calculateVisiblePages();
  }

  @override
  void didUpdateWidget(Pagination oldWidget) {
    super.didUpdateWidget(oldWidget);
    _calculateVisiblePages();
  }

  void _calculateVisiblePages() {
    /// If pages length <= pages visible, then show all the pages
    if (widget.numOfPages <= widget.pagesVisible) {
      _startPage = 1;
      _endPage = widget.numOfPages;
    } else {
      ///  If pages length > pages visible, then show the pages visible
      int middle = (widget.pagesVisible - 1) ~/ 2;
      if (widget.selectedPage <= middle + 1) {
        _startPage = 1;
        _endPage = widget.pagesVisible;
      } else if (widget.selectedPage >= widget.numOfPages - middle) {
        _startPage = widget.numOfPages - (widget.pagesVisible - 1);
        _endPage = widget.numOfPages;
      } else {
        _startPage = widget.selectedPage - middle;
        _endPage = widget.selectedPage + middle;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: RotatedBox(
            quarterTurns: 2,
            child: Image.asset(Id.forward),
          ),
          onPressed: widget.selectedPage > 1 ? () => widget.onPageChanged(widget.selectedPage - 1) : null,
        ),

        // loop through the pages and show the page buttons
        for (int i = _startPage; i <= _endPage; i++)
          GestureDetector(
            onTap: () => widget.onPageChanged(i),
            child: Container(
              margin: only(right: i == _endPage ? 0 : 12),
              width: 32,
              height: 32,
              color: i == widget.selectedPage ? Cl.body : Cl.place_holder_button.withOpacity(0.1),
              child: Center(
                child: Text(
                  '$i',
                  style:
                      St.subtitle_16_regular.copyWith(color: i == widget.selectedPage ? Cl.white : Cl.label),
                ),
              ),
            ),
          ),

        IconButton(
          icon: Image.asset(Id.forward),
          onPressed: widget.selectedPage < widget.numOfPages
              ? () => widget.onPageChanged(widget.selectedPage + 1)
              : null,
        ),
      ],
    );
  }
}
