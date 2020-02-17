"use strict"
// inputに入力データ全体が入る
function Main(input){
    let sum = 0;
    input = input.split(" ").map(e=>parseInt(e)).sort((a, b)=>a<b ? 1 : -1);
    let topvalue = input.shift();
    for(let val of input){
        sum += topvalue - val;
        topvalue = val;
    }
    console.log(sum);
}
//*この行以降は編集しないでください（標準入出力から一度に読み込み、Mainを呼び出します）
Main(require("fs").readFileSync("/dev/stdin", "utf8"));