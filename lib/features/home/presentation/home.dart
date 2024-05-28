import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:priorityshoft_testapp/const/app_color_const.dart';
import 'package:priorityshoft_testapp/const/app_string_const.dart';

final categoryProvider = StateProvider<int>((ref) {
  return 0;
});

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const HomeFilterButton(),
      appBar: AppBar(
        elevation: 0,
        actions: const [Icon(Icons.r_mobiledata)],
        centerTitle: false,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            AppStringResource.khomeAppbarTitle,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryHeading(
              onPressed: () {},
            ),
            const HomeProductList(),
          ],
        ),
      ),
    );
  }
}

class HomeProductList extends StatelessWidget {
  const HomeProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: .0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.8, crossAxisSpacing: 10, crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Center(child: HomeProductCart());
        },
      ),
    );
  }
}

class HomeFilterButton extends StatelessWidget {
  const HomeFilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.black),
      onPressed: () {},
      label: Text(
        "Filter",
        style: TextStyle(color: AppColorResource.kappWhiteColor),
      ),
      icon: const Icon(Icons.filter),
    );
  }
}

class HomeProductCart extends StatelessWidget {
  const HomeProductCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffF3F3F3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.reddit),
                Center(
                  child: Image.network(
                      width: 120,
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDoKz1Y3QVtx-id4FSPOlA1J99j1IbJG2ZqzJzHR0gUQ&s"),
                )
              ],
            ),
          ),
        ),
        const Text("Jordan 1 Rettro High Tie Dye"),
        const Row(
          children: [Icon(Icons.star), Text("4.5"), Text("1045 Reviews")],
        ),
        const Text("\$235.00")
      ],
    );
  }
}

class CategoryHeading extends ConsumerWidget {
  const CategoryHeading({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(categoryProvider);
    List<String> categories = [
      "All",
      "Nike",
      "Jordan",
      "Adidas",
      "Reebok",
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...categories.map((e) => TextButton(
              onPressed: () {
                ref.read(categoryProvider.notifier).state =
                    categories.indexOf(e);
              },
              child: Text(
                e,
                style: TextStyle(
                  fontSize: 16,
                  color: value == categories.indexOf(e)
                      ? const Color(0xff0D0B0B)
                      : const Color(0xffB7B7B7),
                ),
              ))),
        ],
      ),
    );
  }
}
