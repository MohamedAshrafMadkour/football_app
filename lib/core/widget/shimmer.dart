import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerUpcomingWidget extends StatelessWidget {
  const CustomShimmerUpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor:
            Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff2e2e3a)
                : Colors.grey[300]!,
        highlightColor:
            Theme.of(context).brightness == Brightness.dark
                ? Colors.grey[700]!
                : Colors.grey[100]!,
        period: const Duration(milliseconds: 1200),
        child: Column(
          children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              child: Container(
                height: MediaQuery.sizeOf(context).height * .12,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class CustomShimmerLiveLoading extends StatelessWidget {
  const CustomShimmerLiveLoading({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .26,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Shimmer.fromColors(
              baseColor: isDark ? const Color(0xff2e2e3a) : Colors.grey[300]!,
              highlightColor: isDark ? Colors.grey[700]! : Colors.grey[100]!,
              period: const Duration(milliseconds: 1200),
              child: Container(
                width: 250,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey[300],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ShimmerPlayerItem extends StatelessWidget {
  const ShimmerPlayerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final baseColor = isDark ? const Color(0xff2e2e3a) : Colors.grey[300]!;
    final highlightColor = isDark ? Colors.grey[700]! : Colors.grey[100]!;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      period: const Duration(milliseconds: 1200),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .25,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
