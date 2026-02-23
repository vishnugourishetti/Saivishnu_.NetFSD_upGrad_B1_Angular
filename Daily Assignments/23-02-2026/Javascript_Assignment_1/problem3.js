let amount=45000

if(amount>=5000){
    amount=amount*20/100
}else if(amount>=3000 && amount<5000){
    amount=amount*10/100
}else{
    amount=amount
}

console.log(amount)