// 文字の連続する数を使って、基本的な文字列圧縮を行うメソッドを実装
// 例：「aabcccccaaa」→「a2b1c5a3」
// もし、圧縮変換された文字列が元の文字列よりも短くならなければ、元の文字列を返す
// 文字列はアルファベットの大文字と小文字のみを想定

function stringCompression(input){
   input = input.split("");
   let result = "";
   for(let i = 0;i < input.length;i+=0){
       let count = 0;
       let el = input[i];
       do{
           count++;
           i++;
       }while(el==input[i]);
       result = result + el + count;
   }
   return input.length > result.split("").length ? result : input.join("");
}
str = "aabcccccaaa"
console.log(stringCompression(str));