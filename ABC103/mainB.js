"use strict"
// inputに入力データ全体が入る
function Main(input){
    let line = input.split("\n");
    let str = line[0] + line[0];
    console.log(str.includes(line[1]) ? "Yes" : "No");
}
//*この行以降は編集しないでください（標準入出力から一度に読み込み、Mainを呼び出します）
Main(require("fs").readFileSync("/dev/stdin", "utf8"));