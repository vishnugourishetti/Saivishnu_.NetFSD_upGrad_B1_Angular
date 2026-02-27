class Product {
    constructor({ name, price, category = "General" }) {
        this.name = name;
        this.price = price;
        this.category = category;
    }

    getDetails = () => {
        return `Product: ${this.name}, Price: ₹${this.price}, Category: ${this.category}`;
    }

    applyDiscount(discountPercent = 10) {
        this.price = this.price - (this.price * discountPercent / 100);
    }
}

const productData = {
    name: "Laptop",
    price: 60000
};

const newProduct = new Product({ ...productData });

console.log(newProduct.getDetails());
newProduct.applyDiscount(20);
console.log(newProduct.getDetails());