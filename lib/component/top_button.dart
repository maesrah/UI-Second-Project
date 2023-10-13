import 'package:flutter/material.dart';

class topButton extends StatelessWidget {
  const topButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color colors = const Color(0xffC08261);
    return Positioned(
      top: 50.0,
      left: 10.0,
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: colors,
                    //border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                    //size: 17.0,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to favourite')));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: colors,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        //size: 17.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Share to friend')));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: colors,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
