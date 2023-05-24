import 'package:flutter/material.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Environment extends StatefulWidget {
  final Widget child;
  final Widget? backgroundChild;
  final Widget? loadingChild;
  final List<SingleChildWidget> providers;
  final Future Function()? initServices;

  const Environment({
    super.key,
    required this.child,
    this.backgroundChild,
    this.loadingChild,
    this.providers = const [],
    this.initServices,
  });

  @override
  State<Environment> createState() => _EnvironmentState();
}

class _EnvironmentState extends State<Environment> {
  bool isInited = false;

  @override
  void initState() {
    super.initState();
    initService();
  }

  Future<void> initService() async {
    if (widget.initServices != null) {
      await widget.initServices?.call();
    }

    postDelay(
      200,
      () {
        if (mounted) {
          setState(() {
            isInited = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          if (widget.backgroundChild != null) Positioned.fill(child: widget.backgroundChild!),
          if (widget.loadingChild != null)
            Center(
              child: widget.loadingChild,
            ),
          if (widget.providers.isNotEmpty)
            MultiProvider(
              providers: widget.providers,
              child: widget.child,
            )
          else
            widget.child
        ],
      ),
    );
  }
}
