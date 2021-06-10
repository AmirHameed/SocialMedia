import 'package:flutter/material.dart';


class DeleteScreen extends StatefulWidget {
  createState() => DeleteScreenState();
}

List<String> listItems = [
  "Hello",
  "World",
  "Flutter",
  "Love"
]; //dummy list of items

class DeleteScreenState extends State<DeleteScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Swipe List"),
          ),
          body: Container(
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    background: stackBehindDismiss(),
                    key: ObjectKey(listItems[index]),
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(listItems[index]),
                    ),
                    onDismissed: (direction) {
                      var item = listItems.elementAt(index);
                      //To delete
                      deleteItem(index);
                      //To show a snackbar with the UNDO button
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("Item deleted"),
                          action: SnackBarAction(
                              label: "UNDO",
                              onPressed: () {
                                //To undo deletion
                                undoDeletion(index, item);
                              })));
                    },
                  );
                },
              )),
        ));
  }

  void deleteItem(index) {
    /*
    By implementing this method, it ensures that upon being dismissed from our widget tree,
    the item is removed from our list of items and our list is updated, hence
    preventing the "Dismissed widget still in widget tree error" when we reload.
    */
    setState(() {
      listItems.removeAt(index);
    });
  }

  void undoDeletion(index, item) {
    /*
    This method accepts the parameters index and item and re-inserts the {item} at
    index {index}
    */
    setState(() {
      listItems.insert(index, item);
    });
  }

  Widget stackBehindDismiss() {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 20.0),
      color: Colors.red,
      child: Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }
}