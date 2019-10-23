"use strict"

const isOk = (arr, index, key)=> arr[index] >= key ? true : false;

const binarySearch = (arr, key, option="min")=>{
    let left = -1;
    let right = arr.length;
    while(Math.abs(right-left) > 1){
        let mid = ((right+left)/2)|0;
        if(isOk(arr, mid, key)) right = mid;
        else left = mid;
    }
    if(option === "min") return right;
    else if(option === "max") return left;
}

function main(input){
    const line = input.split(",");
    const key = parseInt(line[0]);
    const arr = line[1].split(" ").map(e=>parseInt(e));

    console.log("min:" + binarySearch(arr, key));
    console.log("max:" + binarySearch(arr, key, "max"));
}

const str = "51,1 14 32 51 51 51 243 419 750 910"; // key値, 配列
main(str);

/*
binarySearch(配列, key値, オプション)
    オプションでは初期値が`min`となっており、key値またはkey値より大きい値の最小値のインデックスを求めます。
    また、`max`を入れた場合は『key値"未満"』の最大値のインデックスを求めることが出来ます。
*/
// 参考：https://qiita.com/drken/items/97e37dd6143e33a64c8c