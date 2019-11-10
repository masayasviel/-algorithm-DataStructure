"use strict"
// inputに入力データ全体が入る
function Main(input){
    input = input.split("\n");
    const lineA = input[0].split(" ").map(e=>+e);
    let n = lineA[0], k = lineA[1];
    const x = input[1].split(" ").map(e=>+e);
    let ans = Number.MAX_SAFE_INTEGER;

    for(let i = 0;i < n - k + 1;i++){
        let l = i, r = i+k-1;
        ans = Math.min(ans, Math.abs(x[l]) + Math.abs(x[r] - x[l]), Math.abs(x[r]) + Math.abs(x[r] - x[l]));
    }
    console.log(ans);
}
//*この行以降は編集しないでください（標準入出力から一度に読み込み、Mainを呼び出します）
Main(require("fs").readFileSync("/dev/stdin", "utf8"));