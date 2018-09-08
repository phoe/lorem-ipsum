# LOREM-IPSUM

Lorem ipsum dolor sit amet, consectetur adipiscing elit erat, id eget tellus et turpis, incididunt. Purus mollis penatibus, odio facilisis sit. Quisque sagittis quisque. Incididunt commodo mi non. Lectus facilisi suscipit duis ultricies sem quis. Lorem massa volutpat quis suspendisse turpis, netus hac elementum. At do. Ac integer metus potenti scelerisque fringilla labore. Tellus penatibus arcu ligula nisi.

## Interface

  * `(word)`
  * `(words n)`
  * `(paragraph &key word-count prologue)`
  * `(paragraphs n &key word-count prologue)`

## Example

```common-lisp
LOREM-IPSUM> (word)
"pellentesque"

LOREM-IPSUM> (words 10)
("ligula" "donec" "vivamus" "faucibus" "hac" "orci" "netus" "ipsum" "laoreet" "ac")

LOREM-IPSUM> (paragraph)
"Lorem ipsum dolor sit amet, consectetur adipiscing elit pellentesque, placerat. Vivamus, lorem, cursus tempor eiusmod lectus rutrum. Tristique phasellus aliqua. Suscipit scelerisque, molestie labore ullamcorper. Ultrices eget pellentesque, euismod, risus purus. Dolore mauris magnis, magna mollis mauris fusce. Arcu phasellus luctus suspendisse in elementum lectus sollicitudin. Aliqua risus nisl. Dignissim montes. Scelerisque tempor nisl fusce. Sagittis interdum integer."

LOREM-IPSUM> (paragraph :word-count 10)
"Lorem ipsum dolor sit amet, consectetur adipiscing elit, neque ultrices gravida. Cras cursus nisi et, sem gravida nibh."

LOREM-IPSUM> (paragraph :prologue nil)
"Porta fusce faucibus molestie platea varius. Consequat lorem. Dis pulvinar dis neque elit nisl, parturient. Nam nisl auctor tempus laoreet lobortis sit. Tempus quisque nam etiam vivamus, consectetur nec nec. Risus natoque. Natoque vulputate consectetur risus rutrum proin posuere, neque. Egestas mauris eget dis, nec ligula auctor sit orci. Hac."

LOREM-IPSUM> (paragraphs 3)
("Lorem ipsum dolor sit amet, consectetur adipiscing elit cras tellus ut senectus, tempus, at ultrices ut. Pharetra odio facilisis vel neque, justo. Maecenas lectus tincidunt. Morbi est justo tincidunt tempus, quis quis. Lobortis, proin phasellus mi quam, adipiscing. Est dolore dolor praesent, metus cras id pharetra. Condimentum fermentum suscipit congue lacus. Mattis bibendum eget pulvinar. Dolore gravida adipiscing."
 "Congue est. Sem fermentum sit, enim gravida aliquet. Morbi aliqua, vel auctor sed. Feugiat integer mi. Faucibus, enim ut, morbi hendrerit blandit aenean dolor. Facilisi proin integer libero ultricies. Urna est vivamus placerat. Non potenti elementum mattis, risus arcu interdum, dis blandit. Dolor est. Ultricies, lobortis dis sagittis aenean laoreet."
 "Interdum quisque porttitor magna placerat. Eleifend accumsan. Id ultrices mattis magnis porttitor. Fermentum, sem, hac dolore scelerisque in blandit fermentum. In nisi labore, orci vestibulum donec consectetur. Consectetur tortor. Varius, est facilisi magnis potenti platea euismod at. Montes ultricies maecenas venenatis cras magnis montes potenti, porta. Pulvinar dignissim, dignissim metus.")
```

## License

MIT
