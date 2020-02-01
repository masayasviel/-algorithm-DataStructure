function main(input){
    input = input.replace(/[GF\-]/g, "0").split("");
    let result = 0;
    let n = 0;
    if(input.slice(-3).some(e=>/[PT]/.test(e))){
        n = input.length - 2;
    }else{
        n = input.length;
    }
    for(let i = 0;i < n;i++){
        if(/[0-9]/.test(input[i])){
            result += parseInt(input[i]);
        }else if(input[i] === "P"){ // P スペア
            if(input[i+1] === "T"){
                result += 10 - parseInt(input[i-1]) + 10;
            }else{
                result += parseInt(input[i+1]) - parseInt(input[i-1]) + 10;
            }
        }else if(input[i] === "T"){ // T ストライク
            if(i == input.length-1) result += 10;
            if(input[i+1] === "T" && input[i+2] === "T"){
                result += 30;
            }else if(input[i+1] == "T" && /[0-9]/.test(input[i+2])){
                result += 20 + parseInt(input[i+2])
            }else if(input[i+2] == "P"){
                result += 20;
            }else{
                result += parseInt(input[i+1]) + parseInt(input[i+2]) + 10;
            }
        }
    }
    console.log(result);
}

// 639-G38P7PT9P8FTT6P => 150
// TTTTTTTTTTTT => 300

const str = "TTTTTTTTTTTT";
main(str);