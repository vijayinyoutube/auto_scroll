import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  _ListViewClassState createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  var items = List<String>.generate(100, (i) => "Item $i");

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: Duration(seconds: 5), curve: Curves.linear);
      } else {
        _scrollController.animateTo(0,
            duration: Duration(seconds: 5), curve: Curves.linear);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildListView();
  }

  Widget buildListView() => ListView.builder(
        controller: _scrollController,
        physics: BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      );
}
