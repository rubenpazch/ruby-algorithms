What is the difference between calling super and calling super()?

<b>Hide answer</b>

A call to super invokes the parent method with the same arguments that were passed to the child method. An error will therefore occur if the arguments passed to the child method don’t match what the parent is expecting.

A call to super() invokes the parent method without any arguments, as presumably expected. As always, being explicit in your code is a good thing.

(Thanks to Ruby Gotchas for this question.)