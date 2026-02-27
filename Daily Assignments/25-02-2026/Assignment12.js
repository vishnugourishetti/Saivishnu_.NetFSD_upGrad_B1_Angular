class Wallet {
    #balance = 0;

    addMoney(amount) {
        if (amount > 0) {
            this.#balance += amount;
        }
    }

    spendMoney(amount) {
        if (amount > this.#balance) {
            console.log("Insufficient balance");
        } else {
            this.#balance -= amount;
        }
    }

    getBalance() {
        return this.#balance;
    }
}

const w1 = new Wallet();

w1.addMoney(5000);
w1.spendMoney(2000);

console.log(w1.getBalance());
