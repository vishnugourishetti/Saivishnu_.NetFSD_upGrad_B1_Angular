let students = [
  { name: "Akhil", marks: 85 },
  { name: "Priya", marks: 72 },
  { name: "Ravi", marks: 90 },
  { name: "Meena", marks: 45 },
  { name: "Karan", marks: 30 }
];

let passed = students.filter(s => s.marks >= 40);
console.log("Passed Students:", passed);

let distinction = students.filter(s => s.marks >= 85);
console.log("Distinction Students:", distinction);

let average = students.reduce((sum, s) => sum + s.marks, 0) / students.length;
console.log("Class Average:", average);

let topper = students.reduce((max, s) => s.marks > max.marks ? s : max);
console.log("Topper:", topper);

let failedCount = students.filter(s => s.marks < 40).length;
console.log("Failed Students Count:", failedCount);

let grades = students.map(s => {
  let grade = s.marks >= 85 ? "A" :
              s.marks >= 70 ? "B" :
              s.marks >= 40 ? "C" : "Fail";
  return { ...s, grade: grade };
});
console.log("With Grades:", grades);

let ranked = [...students]
  .sort((a, b) => b.marks - a.marks)
  .map((s, index) => ({ ...s, rank: index + 1 }));
console.log("With Rank:", ranked);

let removeLowest = [...students]
  .sort((a, b) => a.marks - b.marks)
  .slice(1);
console.log("After Removing Lowest:", removeLowest);

let leaderboard = [...students].sort((a, b) => b.marks - a.marks);
console.log("Leaderboard:", leaderboard);