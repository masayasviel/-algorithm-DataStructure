function main(input){
    input = input.split("");
    let output = "";
    let ptr = 0;
    let data = [0, null];
    let bracketIndex = [];

    for(let i = 0;i < input.length;i++){
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
                if(data[ptr] == 0){
                    let depth = 1;
                    while(depth!=0){
                        i++;
                        if(input[i]=="[") depth++;
                        if(input[i]=="]") depth--;
                    }
                }
                bracketIndex.push(i);
                break;
            case "]":
                i = bracketIndex.pop() - 1;
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
