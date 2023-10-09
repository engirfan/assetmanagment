import 'package:assetmanagment/UI/scancomplete.dart';
import 'package:flutter/material.dart';

class AssetsList extends StatefulWidget{
  const AssetsList({super.key});

  @override
  State<AssetsList> createState() => _AssetsListState();
}

class _AssetsListState extends State<AssetsList> {
  final GlobalKey<FormState> _formKey = GlobalKey();
    final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  @override
  Widget build(BuildContext context){
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
         appBar: AppBar(
         centerTitle: true,
        title: Column(
          children: [
            Text("المنتجات",style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 4),
            Text("مركز سبيد - غرفة رقم 407",style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
        ),
      body:  Container(
       
         alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                 padding:const EdgeInsets.all(10),
                child: Form(
                     key: _formKey,
                     child: Column(
                   
                       children: [
                         const SizedBox(height: 16),
                         TextFormField(
                           controller: _controllerUsername,
                           keyboardType: TextInputType.name,
                           decoration: const InputDecoration(
                             prefixIcon: Icon(Icons.search),
                             border: OutlineInputBorder(),
                             hintText: 'ابحث عن منتج برقم كود',
                           ),
                           onEditingComplete: () =>
                               _focusNodePassword.requestFocus(),
                           validator: (String? value) {
                             if (value == null || value.isEmpty) {
                               return "Please enter username.";
                             }
                             return null;
                           },
                         ),
                        
                ],
                ),
                    ),
              ),
        Expanded(
          child: SingleChildScrollView(
          
            child: Column(
              children: <Widget>[
                 ListView.builder(
                       physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:18,
                    itemBuilder: (context,index){
                      return  Column(
                        children:<Widget> [
                         const Divider(),
                          Container(
                            height: 76,
                            decoration:const BoxDecoration(
                
                            ),
                           child: Row(children: [
                                
                            const SizedBox(width: 15),
                             const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('TA-abc-1234'),
                                     SizedBox(height: 4),
                                    Text('كرسي واحد - مركز سبيد'),
                                  ],
                                ),
                              ),
                       
                              
                               Container(
                                height: 32,
                                 width: 87,
                                decoration:const BoxDecoration(
                                color: Color(0xff34c759),
                                borderRadius: BorderRadius.all(Radius.circular(8))
                                ),
                                child:const Center(child:  Text('متوفر')),
                                ),
                                 const SizedBox(width: 11),
                           ]),
                         
                          ),
                        ],
                      );
                
                    })
              ],
            ),
          ),
        ),
            ],
          ),
        
      ),
      bottomSheet: Container(
            width: MediaQuery.of(context).size.width,
            height: 125,
            decoration:const BoxDecoration(color: Colors.white),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).primaryColor,
                                  fixedSize: const Size(327, 65),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(36),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ?? false) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const ScanComlete();
                                        },
                                      ),
                                    );
                                  }
                                },
                                child: Text("مراجعة الفحص",
                                    style: Theme.of(context).textTheme.displaySmall),
                              ),
                ],
              ),
            ),
            ),
      ),
    );
  }
}