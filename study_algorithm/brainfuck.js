function main(input){
    input = input.split("");
    let output = "";
    let ptr = 0;
    let data = [0];
    let bracketIndex = [];

    for(let i = 0;i < input.length;i++){
        switch(input[i]){
            case ">":
                ptr++;
                if(data.length-1 <= i) data.push(0);
                break;
            case "<":
                ptr--;
                break;
            case "+":
                data[ptr] += 1;
                break;
            case "-":
                data[ptr] -= 1;
                break;
            case ".":
                output += String.fromCharCode(data[ptr]);
                break;
            case "[":
                bracketIndex.push(i);
                break;
            case "]":
                if(data[ptr] == 0) bracketIndex.pop();
                else i = bracketIndex[bracketIndex.length-1];
                break;
        }
    }
    console.log(output);
}

const command = "";

main(command);

// Hello, world!
// +++++++++[>++++++++>+++++++++++>+++++<<<-]>.>++.+++++++..+++.>-.------------.<++++++++.--------.+++.------.--------.>+.

// ABC
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.+.+.>++++++++++.

// 0123456789
// ++++++[>++++++++<-]++++++++++[>.+<-]
