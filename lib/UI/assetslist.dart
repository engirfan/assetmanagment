
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
        double height = MediaQuery.of(context).size.height;
    return  Scaffold(
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
      SizedBox(
        height: height-180,
        child: SingleChildScrollView(
          physics:const ScrollPhysics(),
          child: Column(
            children: <Widget>[
               ListView.builder(
                  physics:const NeverScrollableScrollPhysics(),
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
                         child:const Row(children: [
                            Text('متوفر'),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('TA-abc-1234'),
                                  Text('كرسي واحد - مركز سبيد'),
                                ],
                              ),
                            )
                         ]),
                       
                        ),
          //                ListTile(
          //   leading:CircleAvatar(child: Text('متوفر')),
          //   title: Text('TA-abc-1234'),
          //   subtitle: Text('لابتوب مكتب مركز سبيد - القسم الفني'),
          // ),
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
    );
  }
}