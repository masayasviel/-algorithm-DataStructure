function lcs(x, y){
    const c = new Array();
    m = x.length;
    n = y.length;
    for(let a = 0; a < m+1; a++) {
        c[a] = new Array(n+1).fill(0);
    }
    for(let i = 1;i<=m;i++){
        for(let j = 1;j<=n;j++){
            if(x[i] == y[j]){
                c[i][j] = c[i-1][j-1] + 1;
            }else if(c[i-1][j] >= c[i][j-1]){
                c[i][j] = c[i-1][j];
            }else{
                c[i][j] = c[i][j-1]
            }
        }
    }
    console.log("   "+y.split(""));
    console.log(" "+c[0]);
    for(let k = 0;k<x.length;k++){
        console.log(x[k]+c[k+1]);
    }
}

const x = "abcbdab";
const y = "bdcaba";
lcs(x, y);

/*
   b,d,c,a,b,a
 0,0,0,0,0,0,0
a0,0,0,0,1,1,1
b0,0,1,1,1,1,1
c0,0,1,1,2,2,2
b0,1,1,1,2,2,2
d0,1,1,2,2,3,3
a0,1,1,2,3,3,3
b0,1,1,2,3,3,4
*/