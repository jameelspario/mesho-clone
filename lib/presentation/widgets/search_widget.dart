import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController controller  = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // controller.addListener((){
    //   final txt = controller.text;
    //   searchController.inputSink.add(txt);
    //
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 30,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 6),
            child: Icon(Icons.search,),
          ),
          suffixIcon: Row(
            children: [

            ],
          ),
          contentPadding: const EdgeInsets.all(5),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            borderSide: BorderSide(color: Colors.black12),
            gapPadding: 1.0
          ),
          hintText: 'Search....',
            filled: true,
            fillColor: Colors.white
        ),
      ),
    );
  }
}
