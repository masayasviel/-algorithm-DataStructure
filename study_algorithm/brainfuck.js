function main(input){
    input = input.split("");
    let output = "";
    let ptr = 0;
    let data = [0, null];
    let bracketIndex = [];
    let skipCounter = 0

    for(let i = 0;i < input.length;i++){
        if(skipCounter != 0 && /[^\[\]]/.test(input[i])){
            // ptr++;
            continue;
        }
        switch(input[i]){
            case ">":
                ptr++;
                if(data[ptr] == null){
                    data[ptr] = 0;
                    data.push(null);
                }
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
                if(data[ptr] != 0){
                    bracketIndex.push(i);
                }else{
                    skipCounter++;
                }
                break;
            case "]":
                if(data[ptr] != 0){
                    i = bracketIndex.pop()-1;
                }else{
                    if(skipCounter == 0){
                        bracketIndex.pop();
                    }else{
                        skipCounter--;
                    }
                }
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