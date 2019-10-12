function main(input){
    let a, b;
    let data = [];
    input.split("").forEach(e => {
        switch(e){
            case "+":
                a = data.pop();
                b = data.pop();
                data.push(a+b);
                break;
            case "-":
                b = data.pop();
                a = data.pop();
                data.push(a-b);
                break;
            case "*":
                a = data.pop();
                b = data.pop();
                data.push(a*b);
                break;
            default:
                data.push(parseInt(e))
        }
    });
    console.log(data[0]);
}

str = "43-56+*"

main(str);