

import 'package:assetmanagment/UI/assetslist.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class ScanStart extends StatefulWidget {
 const ScanStart({super.key});

  @override
  State<ScanStart> createState() => _ScanStartState();
}

class _ScanStartState extends State<ScanStart> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context){
      double height = MediaQuery.of(context).size.height-40;
return Directionality(
  textDirection: TextDirection.rtl,
  child:   Scaffold(
  
    appBar: AppBar(
  
      centerTitle: true,
  
      title: Text("عملية الجرد",style: Theme.of(context).textTheme.displayMedium),
  
    ),
  
      body:  GestureDetector(
  
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
  
        child: Scaffold(
  
          body: SingleChildScrollView(
  
            child: SizedBox(
  
              height: height,
  
              child: Container(
  
                padding: const EdgeInsets.symmetric(horizontal: 20),
  
                child: Form(
  
                  key: _formKey,
  
                  child: Column(
  
                    crossAxisAlignment: CrossAxisAlignment.start,
  
                    children: [
  
                     const SizedBox(height: 24),
  
                     Text("ماذا تود ان تبدأ",style: Theme.of(context).textTheme.displaySmall),
  
                     const SizedBox(height: 8),
  
                      Text("قم بتحديد العناصر التالية لبدأ عملية الجرد",style: Theme.of(context).textTheme.displaySmall),
  
                       const SizedBox(height: 24),
  
                     DropdownSearch<String>(
                     
                       popupProps:const PopupProps.modalBottomSheet(
                     
                       showSelectedItems: true,
                     
                       showSearchBox: false  ,
                     
                       modalBottomSheetProps: ModalBottomSheetProps(
                        backgroundColor: Colors.white
                       )
                     
                       ),
                     
                       items:const  ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                     
                       dropdownDecoratorProps:const DropDownDecoratorProps(
                     
                       dropdownSearchDecoration: InputDecoration(
                     
                       // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
                     
                       labelText: "اسم الجرد",
                      labelStyle: TextStyle(
                        locale: Locale("ar_AE","Arabic United Arab Emirates"),
                      ),
                       hintText: "country in menu mode",
                     
                        ),
                     
                       ),
                     
                        onChanged: print,
                     
                         //selectedItem: "Brazil",
                     
                      ),
  
                     const SizedBox(height: 20),
  
                       DropdownSearch<String>(
  
      popupProps:const PopupProps.modalBottomSheet(
  
          showSelectedItems: true,
  
          showSearchBox: false
  
      ),
  
       items:const  ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
  
      dropdownDecoratorProps:const DropDownDecoratorProps(
  
          dropdownSearchDecoration: InputDecoration(
  
              labelText: "الموقع",
  
              hintText: "country in menu mode",
  
          ),
  
      ),
  
      onChanged: print,
  
      //selectedItem: "Brazil",
  
  ),
  
                      const SizedBox(height: 20),
  
                      DropdownSearch<String>(
                          
                          popupProps:const PopupProps.modalBottomSheet(
                      
                              showSelectedItems: true,
                      
                              showSearchBox: false
                      
                              
                      
                          ),
                      
                           items:const  ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                      
                          dropdownDecoratorProps:const DropDownDecoratorProps(
                          
                              dropdownSearchDecoration: InputDecoration(
                      
                                  labelText: "غرفة الجرد",
                      hintTextDirection: TextDirection.ltr,
                                  hintText: "country in menu mode",
                              ),
                      
                          ),
                      
                          onChanged: print,
                      
                          //selectedItem: "Brazil",
                      
                      ),
  
  
  
                      
  
                      const Spacer(),
  
                      Align(
  
                        alignment: FractionalOffset.bottomCenter,
  
                        child: ElevatedButton(
  
                          style: ElevatedButton.styleFrom(
  
                            backgroundColor: Theme.of(context).primaryColor,
  
                            fixedSize: const Size(327, 65),
  
                            shape: RoundedRectangleBorder(
  
                              borderRadius: BorderRadius.circular(36),
  
                            ),
  
                          ),
  
                          onPressed: () {
  
                            if (_formKey.currentState?.validate() ?? false) {
  
                              Navigator.push(
  
                                context,
  
                                MaterialPageRoute(
  
                                  builder: (context) {
  
                                    return const AssetsList();
  
                                  },
  
                                ),
  
                              );
  
                            }
  
                          },
  
                          child: Text("ابدأ الفحص",
  
                              style: Theme.of(context).textTheme.displaySmall),
  
                        ),
  
                      ),
  
                      const SizedBox(height: 50),
  
                    ],
  
                  ),
  
                ),
  
              ),
  
            ),
  
          ),
  
        ),
  
      ),
  
  ),
);
  }
}