
import 'package:flutter/material.dart' ;
import 'package:intl/intl.dart' ;
import 'dart:ui' as ui;

class ScanComlete extends StatefulWidget{
  const ScanComlete({super.key});

  @override
  State<ScanComlete> createState() => _ScanComleteState();
}

class _ScanComleteState extends State<ScanComlete> {
    final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController dateinput = TextEditingController(); 
   @override
   void initState() {
  dateinput.text = ""; //set the initial value of text field
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
     return  Directionality(
      textDirection: ui.TextDirection.rtl,
       child: Scaffold(
         appBar: AppBar(
         centerTitle: true,
        title: Column(
          children: [
            Text("مراجعة الفحص",style: Theme.of(context).textTheme.displaySmall),
          ],
        ),
        ),
        body:  Container(
          padding:const EdgeInsets.all(16),
          alignment: Alignment.centerRight,
          child: Expanded(
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                const SizedBox(height: 16),
               Text("التقرير النهائي للفحص",style: Theme.of(context).textTheme.displaySmall),
               const SizedBox(height: 8),
                Text("يرجي التأكد من البيانات المدونة بالأسفل وتأكيد الفحص",style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(height: 24),
                Container(
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1.0,
                     color: Colors.white
                  ),
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                    ),
                  
                  child: Row(
                     children: [
                    const  SizedBox(width: 35),
                     const Icon(Icons.check),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("اسم الفحص او الجرد",style: Theme.of(context).textTheme.displaySmall),
                              const SizedBox(height: 5),
                               Text("مركز سبيد - غرفة رقم 407",style: Theme.of(context).textTheme.displaySmall),
                          ],
                        ),
                        
                      ),
                        const  SizedBox(width: 35),
                     
                     ],
                     
                  ),
                ),
                 const  SizedBox(height: 8),
                Column(
                  children: [
                    Form(
                  key: _formKey,
                  child: Column(
                    children: [
                        const  SizedBox(height: 8),
                TextFormField(
                        
                        controller: dateinput,
                      readOnly:true,
                      
                       onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    if(pickedDate != null ){
                        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate); 
                        setState(() {
                           dateinput.text = formattedDate; //set output date to TextField value. 
                        });
                    }
                  },
                        decoration:const InputDecoration(
                          labelText: "Enter Date",
                          prefixIcon:  Icon(Icons.calendar_month),
                          fillColor:Colors.white,
                          filled: true
                        ),
                       
                      ),
                    ],
                  ),
                    ),
                      const  SizedBox(height: 8),
                   
               
                Container(
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1.0,
                     color: Colors.white
                  ),
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                    ),
                  
                  child: Row(
                     children: [
                   
                      const  SizedBox(width: 35),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("اسم الفحص او الجرد",style: Theme.of(context).textTheme.displaySmall),
                              const SizedBox(height: 5),
                               Text("مركز سبيد - غرفة رقم 407",style: Theme.of(context).textTheme.displaySmall),
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
                                child:const Center(
                                  child:  Text('متوفر')),
                                ),
                                 const SizedBox(width: 12),
                     ],    
                  ),
                ),
               const  SizedBox(height: 8),
                 Container(
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1.0,
                     color: Colors.white
                  ),
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                    ),
                  
                  child: Row(
                     children: [
                   
                      const  SizedBox(width: 35),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("اسم الفحص او الجرد",style: Theme.of(context).textTheme.displaySmall),
                              const SizedBox(height: 5),
                               Text("مركز سبيد - غرفة رقم 407",style: Theme.of(context).textTheme.displaySmall),
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
                                child:const Center(
                                  child:  Text('متوفر')),
                                ),
                                 const SizedBox(width: 12),
                     ],    
                  ),
                ),
                 const  SizedBox(height: 8),
                  Container(
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1.0,
                     color: Colors.white
                  ),
                   color: Colors.white,
                    borderRadius: BorderRadius.circular(36.0),
                    ),
                  
                  child: Row(
                     children: [
                   
                      const  SizedBox(width: 35),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("اسم الفحص او الجرد",style: Theme.of(context).textTheme.displaySmall),
                              const SizedBox(height: 5),
                               Text("مركز سبيد - غرفة رقم 407",style: Theme.of(context).textTheme.displaySmall),
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
                                child:const Center(
                                  child:  Text('متوفر')),
                                ),
                                 const SizedBox(width: 12),
                     ],    
                  ),
                ),
                const Divider(),
                  ],
                )
              ]
              
              ),
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
                                      )
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