import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 50.0,
              width: 50.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icone/avatar.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تسجيل خروج",
                        style: Theme.of(context).textTheme.displaySmall),
                    SvgPicture.asset(
                      "assets/icone/logout.svg",
                      width: 20,
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const SizedBox(height: 44),
          Container(
              alignment: Alignment.centerRight,
              child: Text("قائمة الوظائف",
                  style: Theme.of(context).textTheme.displaySmall)),
          const SizedBox(height: 12),
          Container(
            width: 325,
            height: 280,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          Container(
            width: 325,
            height: 280,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(24),
            ),
          )
        ]),
      ),
    );
  }
}
