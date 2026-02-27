class Employee {
    constructor(name, salary) {
        this.name = name;
        this.salary = salary;
    }

    getDetails() {
        return `Name: ${this.name}, Base Salary: ₹${this.salary}`;
    }
}

class Manager extends Employee {
    constructor(name, salary, bonus) {
        super(name, salary);
        this.bonus = bonus;
    }

    getTotalSalary() {
        return this.salary + this.bonus;
    }
}

class Director extends Manager {
    constructor(name, salary, bonus, stockOptions) {
        super(name, salary, bonus);
        this.stockOptions = stockOptions;
    }

    getFullCompensation() {
        return this.getTotalSalary() + this.stockOptions;
    }
}


const d1 = new Director("Vishnu", 80000, 20000, 50000);

console.log(d1.getDetails());
console.log("Total Salary (Manager level): ₹" + d1.getTotalSalary());
console.log("Full Compensation (Director level): ₹" + d1.getFullCompensation());