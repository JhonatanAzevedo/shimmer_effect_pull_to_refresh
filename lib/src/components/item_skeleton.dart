import 'package:flutter/material.dart';
import 'package:shimmer_effect_pull_to_refresh/src/components/skeleton.dart';

class ItemSkeletonWidget extends StatelessWidget {
  const ItemSkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade200,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Skeleton(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Skeleton(
                child: Container(
                  height: 20,
                  width: 160,
                  color: Colors.grey.shade300,
                ),
              ),
              const SizedBox(height: 5),
              Skeleton(
                child: Container(
                  height: 20,
                  width: 180,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
