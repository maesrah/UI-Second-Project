import 'package:flutter/material.dart';

class HostWidget extends StatelessWidget {
  const HostWidget({
    super.key,
    required this.imageHost,
    required this.host,
  });

  final String imageHost;
  final String host;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(imageHost),
        ),
        // Container(
        //   width: 24 * 2,
        //   height: 24 * 2,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     image: DecorationImage(
        //       image: AssetImage(imageHost),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hosted by $host',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Last online: ',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: '12 hours ago',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ],
        )
      ]),
    );
  }
}
