let books = [
  { id: 1, title: "JavaScript Basics", price: 450, stock: 10 },
  { id: 2, title: "React Guide", price: 650, stock: 5 },
  { id: 3, title: "Node.js Mastery", price: 550, stock: 8 },
  { id: 4, title: "CSS Complete", price: 300, stock: 12 }
];

console.log("Book Titles:");
console.log(books.map(b => b.title));

let totalValue = books.reduce((sum, b) => sum + (b.price * b.stock), 0);
console.log("Total Inventory Value:", totalValue);

let above500 = books.filter(b => b.price > 500);
console.log("Books Above ₹500:", above500);

let increasedPrice = books.map(b => ({
  ...b,
  price: Math.round(b.price * 1.05)
}));
console.log("After 5% Price Increase:", increasedPrice);

let sortedBooks = [...books].sort((a, b) => a.price - b.price);
console.log("Sorted by Price:", sortedBooks);

let removedBook = books.filter(b => b.id !== 2);
console.log("After Removing ID 2:", removedBook);

let outOfStock = books.some(b => b.stock === 0);
console.log("Any Book Out of Stock?", outOfStock);

let grouped = books.reduce((acc, b) => {
  if (b.price < 400) acc.low.push(b);
  else if (b.price <= 600) acc.medium.push(b);
  else acc.high.push(b);
  return acc;
}, { low: [], medium: [], high: [] });

console.log("Grouped by Price Range:", grouped);

let discount = books.map(b => 
  b.price > 600 ? { ...b, price: Math.round(b.price * 0.9) } : b
);
console.log("After Discount:", discount);

let invoice = books.map(b => b.title + " - ₹" + b.price).join("\n");
console.log("Invoice:\n" + invoice);