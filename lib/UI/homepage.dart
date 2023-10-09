
import 'package:assetmanagment/UI/scanstart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     // double height=MediaQuery.of(context).size.height;
       // double width=MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              Expanded(
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       SvgPicture.asset(
                        "assets/icone/logout.svg",
                        width: 20,
                        height: 20,
                      ),
                      Text("تسجيل خروج",
                          style: Theme.of(context).textTheme.displaySmall),
                     
                    ],
                  ),
                ),
              ),
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
            ],
          ),
        ),
        body: Container(
          padding:const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            const SizedBox(height: 24),
            Container(
                alignment: Alignment.centerRight,
                child: Text("قائمة الوظائف",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.bold))),
            const SizedBox(height: 12),
            InkWell(
             onTap: () {
                 Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => const ScanStart()),
                 );
               },
              child: Container(
                width: 339,
                height: 320,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    const SizedBox(height:72),
                     SvgPicture.asset("assets/icone/scan.svg",width: 100,height: 100),
                     const SizedBox(height:24),
                     Text("ابدأ الفحص",style: Theme.of(context).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height:16),
                      Text("أطلع على قوائم الجرد المثبته لديك",style: Theme.of(context).textTheme.displaySmall),
                  ]
                  ),
              ),
            ),
             const SizedBox(height: 7),
            Container(
              width: 339,
              height: 320,
              decoration: BoxDecoration(
                color: const Color.fromARGB(171, 10, 10, 10),
                borderRadius: BorderRadius.circular(24),
              ),
               child: Column(
                children: [
                  const SizedBox(height:72),
                   SvgPicture.asset("assets/icone/report.svg",width: 100,height: 100),
                   const SizedBox(height:24),
                   Text("التقارير",style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
                    const SizedBox(height:16),
                    Text("أطلع على قوائم الجرد المثبته لديك",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white)),
                ]
                ),
            )
          ]),
        ),
      ),
    );
  }
}
