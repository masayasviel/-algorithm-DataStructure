"use strict"
// inputに入力データ全体が入る
function Main(input){
    input = parseInt(input);
    if(input < 1200){
        console.log("ABC");
    }else if(input < 2800){
        console.log("ARC");
    }else{
        console.log("AGC");
    }
}
//*この行以降は編集しないでください（標準入出力から一度に読み込み、Mainを呼び出します）
Main(require("fs").readFileSync("/dev/stdin", "utf8"));