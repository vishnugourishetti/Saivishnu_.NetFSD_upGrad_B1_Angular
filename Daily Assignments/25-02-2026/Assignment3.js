class Student{
    constructor(name){
        this.name=name;
        this.marks=[];
    }

    addMark(mark){
        this.marks.push(mark)
    }

    getAverage(){
        let sum=0
        for(let i of this.marks){
                sum=sum+i
            }
            let avg=sum/this.marks.length

            return avg
    }

    getGrade()
    {
        if(this.getAverage()>90){
            console.log("A")
        }else if(this.getAverage()<=90 && this.getAverage()>75){
            console.log("B")
        }else if(this.getAverage()<=75 && this.getAverage()>50){
            console.log("C")
        }else{
            console.log("Fail")
        }
    }
}
const p=new Student("vishnu");
p.addMark(20)
p.addMark(80)
p.addMark(60)

console.log(p.getAverage())
console.log(p.getGrade())