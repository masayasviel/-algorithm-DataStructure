// REがでる

"use strict"
// inputに入力データ全体が入る
function Main(input) {
    let tmp = input.split("\n");
    let num = tmp[0].split(" ").map(e=>~~e);
    let arr = tmp.slice(1, num[1]+1);
    for(let i = 0;i < arr.length-1;i++) arr[i] = arr[i].slice(0, -1);
    arr = arr.filter(w=>!w.split("").every(a=>a=="."));
    let newArr = arr.map(e=>e.split(""));
    const transpose = a => a[0].map((_, c) => a.map(r => r[c]));
    let hoge = transpose(newArr);
    hoge = hoge.filter(w=>!w.every(a=>a=="."));
    let fuga = transpose(hoge);
    console.log(fuga.join("\n").replace(/,/g, ''));
}
//*この行以降は編集しないでください（標準入出力から一度に読み込み、Mainを呼び出します）
Main(require("fs").readFileSync("/dev/stdin", "utf8"));