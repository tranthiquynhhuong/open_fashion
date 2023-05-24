part of test;

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<TestModel>(context);

    final model = context.watch<TestModel>();

    return Scaffold(
      body: SafeArea(
        child: buildBody(model),
      ),
    );
  }

  Widget buildBody(model) {
    return Row(
      children: [
        Text(model.str),
        IconButton(
          onPressed: () => model.updateString(),
          icon: const Icon(Icons.ac_unit),
        )
      ],
    );
    // return Consumer<TestModel>(
    //   builder: (context, model, _) {
    //     return Row(
    //       children: [
    //         Text(model.str),
    //         IconButton(
    //           onPressed: () => model.updateString(),
    //           icon: const Icon(Icons.ac_unit),
    //         )
    //       ],
    //     );
    //   },
    // );
  }
}
