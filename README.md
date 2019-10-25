# flutter_app

A new Flutter application.

## Getting Started
<br>
<h3>Exploring the types of ListView<h3>
  Let’s look at the types of ListViews there are:
  <br><br>
 1 ListView <br>
 2 ListView.builder<br>
 3 ListView.separated<br>
 4 ListView.custom<br>
  <br><br>
  Let’s go around exploring these types one by one:
ListView
This is the default constructor of the ListView class. A ListView simply takes a list of children and makes it scrollable.
  <br><br>
  The general format of the code is:
  <br>
  ListView(
  children: <Widget>[
    ItemOne(),
    ItemTwo(),
    ItemThree(),
  ],
),
  
  <br><br>
  
 <h3> ListView.builder() </h3>
 <br><br>
The builder() constructor constructs a repeating list of items. The constructor takes two main parameters: An itemCount for the number of items in the list and an itemBuilder for constructed each list item.
<br><br>
The general format of the code is:
<br><br>
ListView.builder(
  itemCount: itemCount,
  itemBuilder: (context, position) {
    return listItem();
  },
),
<br><br>
ListView.builder(
  itemBuilder: (context, position) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(position.toString(), style: TextStyle(fontSize: 22.0),),
      ),
    );
  },
),
<br><br>
<h3>ListView.separated()</h3>
<br><br>
In the separated() constructor, we generate a list and we can specify the separator between each item.
<br><br>
The code for this type goes as:
<br><br>
ListView.separated(
      itemBuilder: (context, position) {
        return ListItem();
      },
      separatorBuilder: (context, position) {
        return SeparatorItem();
      },
      itemCount: itemCount,
),
<br><br>
<h3>ListView.custom()</h3>
<br>
The custom() constructor as its name suggests, lets you build ListViews with custom functionality for how the children of the list are built. The main parameter required for this is a SliverChildDelegate which builds the items. The types of SliverChildDelegates are
<br><br>
  <h4>SliverChildListDelegate<h4>
  <h4>SliverChildBuilderDelegate </4>
  
  More detail below link
  <br><br>
  https://medium.com/flutter-community/flutter-listview-and-scrollphysics-a-detailed-look-7f0912df2754
  
