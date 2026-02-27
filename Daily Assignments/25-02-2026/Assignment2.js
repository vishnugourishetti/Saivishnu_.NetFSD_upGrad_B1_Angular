class Bank {
    constructor(accountholder, balance) {
        this.accountholder = accountholder;
        this.balance = balance;
    }

    deposit(amount) {
        if (amount <= 0) {
            console.log("Deposit amount must be greater than 0");
        } else {
            this.balance += amount;
            console.log("Amount deposited successfully");
        }
    }

    withdraw(amount) {
        if (amount > this.balance) {
            console.log("Insufficient balance");
        } else if (amount <= 0) {
            console.log("Withdrawal amount must be greater than 0");
        } else {
            this.balance -= amount;
            console.log("Amount withdrawn successfully");
        }
    }

    checkbalance() {
        console.log(`Current balance: ${this.balance}`);
    }
}

const b1 = new Bank("vishnu", 25000);

b1.checkbalance();
b1.deposit(50000);
b1.withdraw(10000);
b1.checkbalance();