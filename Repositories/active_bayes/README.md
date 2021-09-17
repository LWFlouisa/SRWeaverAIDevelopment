# active_bayes
A constantly learning model of Naive Bayes.

## Credits
This utilizes the gem from [Naive Bayes](https://www.rubydoc.info/gems/naive_bayes/0.0.3) by Red Davis.

However this is used slightly differently: each time you run the builder, it automatically appends the new training example, and keeping an archive of this combination in storage as algorithmic memory. This is used to gradually grow the language proficiency of the model. Eventually will use a similar concept to grow a dynamic if then else which will direct to a different AIML script.
