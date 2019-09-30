const str = "nisioisin"
function main(input){
    let arr1 = input.split("");
    let arr2 = arr1.filter((x, i, self)=>self.indexOf(x) === i);
    console.log(arr1.length == arr2.length?"重複がない":"重複がある");
}
main(str);