let employees = [
 { id:1, name:"Ravi", dept:"IT", salary:70000 },
 { id:2, name:"Anita", dept:"HR", salary:50000 },
 { id:3, name:"Karan", dept:"IT", salary:80000 },
 { id:4, name:"Meena", dept:"Finance", salary:60000 }
];

let totalSalary = employees.reduce((sum, e) => sum + e.salary, 0);
console.log("Total Salary Expense:", totalSalary);

let highest = employees.reduce((max, e) => e.salary > max.salary ? e : max);
let lowest = employees.reduce((min, e) => e.salary < min.salary ? e : min);
console.log("Highest Paid:", highest);
console.log("Lowest Paid:", lowest);

let increasedIT = employees.map(e =>
  e.dept === "IT"
    ? { ...e, salary: Math.round(e.salary * 1.15) }
    : e
);
console.log("After IT Salary Increase:", increasedIT);

let grouped = employees.reduce((acc, e) => {
  if (!acc[e.dept]) acc[e.dept] = [];
  acc[e.dept].push(e);
  return acc;
}, {});
console.log("Grouped by Department:", grouped);

let deptAverage = Object.keys(grouped).map(dept => {
  let avg = grouped[dept].reduce((sum, e) => sum + e.salary, 0) / grouped[dept].length;
  return { dept: dept, averageSalary: avg };
});
console.log("Department-wise Average Salary:", deptAverage);

let sorted = [...employees].sort((a, b) => b.salary - a.salary);
console.log("Sorted by Salary (High → Low):", sorted);

let withTax = employees.map(e => ({
  ...e,
  salaryAfterTax: Math.round(e.salary * 0.9)
}));
console.log("After 10% Tax Deduction:", withTax);

let avgSalary = totalSalary / employees.length;
let aboveAverage = employees.filter(e => e.salary > avgSalary);
console.log("Employees Above Average Salary:", aboveAverage);

let htmlTable = `
<table border="1">
<tr><th>ID</th><th>Name</th><th>Dept</th><th>Salary</th></tr>
${employees.map(e =>
  `<tr><td>${e.id}</td><td>${e.name}</td><td>${e.dept}</td><td>${e.salary}</td></tr>`
).join("")}
</table>
`;

console.log("HTML Table:\n", htmlTable);