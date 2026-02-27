class User {
    constructor(username) {
        this.username = username;
        this._password = "";
    }

    set password(value) {
        if (value.length < 6) {
            console.log("Password must be at least 6 characters");
        } else {
            this._password = value;
        }
    }

    get password() {
        return this._password;
    }
}

const u1 = new User("Vishnu");
u1.password = "12345";
u1.password = "12345678";

console.log(u1.password);