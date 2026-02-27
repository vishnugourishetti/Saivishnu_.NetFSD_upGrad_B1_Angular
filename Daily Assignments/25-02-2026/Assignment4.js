class Vehicle {
    constructor(brand, speed) {
        this.brand = brand;
        this.speed = speed;
    }

    start() {
        console.log(`${this.brand} vehicle started at ${this.speed} km/h`);
    }
}

class Car extends Vehicle {
    constructor(brand, speed, fuelType) {
        super(brand, speed);
        this.fuelType = fuelType;
    }

    showDetails() {
        console.log(`Brand: ${this.brand}`);
        console.log(`Speed: ${this.speed} km/h`);
        console.log(`Fuel Type: ${this.fuelType}`);
    }

    start() {
        super.start();
        console.log("Car is ready to drive.");
    }
}

const c1 = new Car("Toyota", 120, "Petrol");

c1.start();
c1.showDetails();