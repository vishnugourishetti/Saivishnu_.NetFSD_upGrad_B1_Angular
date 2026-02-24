let numbers = [10, 20, 30, 10, 40, 20, 50, 60, 60];

let unique = [...new Set(numbers)];
console.log("Without Duplicates:", unique);

let secondLargest = [...new Set(numbers)]
  .sort((a, b) => b - a)[1];
console.log("Second Largest:", secondLargest);

let frequency = numbers.reduce((acc, num) => {
  acc[num] = (acc[num] || 0) + 1;
  return acc;
}, {});
console.log("Frequency:", frequency);

let firstNonRepeating = numbers.find(num => frequency[num] === 1);
console.log("First Non-Repeating:", firstNonRepeating);

let rotateBy2 = numbers.slice(2).concat(numbers.slice(0, 2));
console.log("Rotated by 2:", rotateBy2);

let nested = [1, 2, [3, 4, [5]]];
let flattened = nested.flat(Infinity);
console.log("Flattened Array:", flattened);

let arr = [1, 2, 3, 5, 6];
let missing = arr.reduce((a, b, i) => a + b - (i + 1), 0);
console.log("Missing Number:", missing);