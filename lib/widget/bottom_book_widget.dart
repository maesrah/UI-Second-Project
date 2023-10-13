import 'package:flutter/material.dart';

class BottomBookBar extends StatelessWidget {
  const BottomBookBar({
    super.key,
    required this.rentPrice,
  });

  final double rentPrice;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context)
          .secondaryHeaderColor, // Set the background color of the bottom navigation bar
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'RM$rentPrice',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'per month',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Book Now',
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Icon(
                    Icons.chat_rounded,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
