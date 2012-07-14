Floating UITableView headers
============================

These classes aim to copy the behaviour found in iOS built-in Spotlight search, where the search results are grouped by category and the icon of the respective category floats on the left side of the search results.

Setup
-----

Check out the example project so see how to setup the classes.

1. Add the `.m` + `.h` files of `BBFloatingHeaderViewController` and `BBFloatingHeaderCell` to your project.
2. Create a TableView and set the Class of the ViewController to your subclass of `BBFloatingHeaderViewController`
3. Create the header cell in IB and set its class to your subclass of `BBFloatingHeaderCell`
4. Make sure that your floating header view is the topmost view in the `BBFloatingHeaderCell`'s view hierarchy.

Credits
-------
 
If you find [this component](https://github.com/besi/FloatingTableViewHeader) useful you can "give [me](http://stackoverflow.com/users/784318/besi) some ❤" on this [StackOverflow post / answer](http://stackoverflow.com/q/11475897)

The result
----------

![Floating Headers](http://i.minus.com/jyea3I5qbUdoQ.png)