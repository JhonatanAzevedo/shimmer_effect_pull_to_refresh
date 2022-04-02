import 'package:flutter/material.dart';
import '../../../../src/components/item_skeleton.dart';
import '../../../../src/components/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Programmer> programmers = [];
  bool loading = false;

  Future<void> loadList() async {
    setState(() => loading = true);

    await Future.delayed(const Duration(seconds: 2));
    programmers.clear();
    programmers.addAll(
      [
        Programmer(name: 'jhonatan', experiences: 'Flutter, Dart'),
        Programmer(name: 'Igor', experiences: 'C#, Java'),
        Programmer(name: 'Laura', experiences: 'C++, Rubi'),
      ],
    );
    setState(() => loading = false);
  }

  @override
  void initState() {
    super.initState();
    loadList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shimmer Effect')),
      body: loading == true
          ? ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  thickness: 1,
                  height: 0,
                ),
              ),
              itemBuilder: (context, index) => const ItemSkeletonWidget(),
            )
          : RefreshIndicator(
              onRefresh: loadList,
              child: ListView.separated(
                itemCount: programmers.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1,
                    height: 0,
                  ),
                ),
                itemBuilder: (context, index) => ItemWidget(
                  programmer: programmers[index],
                ),
              ),
            ),
    );
  }
}








