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