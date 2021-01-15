const pipe = (...fns) => (x) => fns.reduce((v, f) => f(v), x);

const split_words = (title) => title.split();

const capitalize_all = (array) => array.map((str) => str.toUpperCase());

const join_with_withespace = (array) => array.join(" ");

const capitalize_words = (title) =>
  pipe(split_words, capitalize_all, join_with_withespace)(title);
