class Node{
    constructor(value){
        this.value = value;
        this.parent = null;
        this.left = null;
        this.right = null;
    }
}

class BinarySearchTree{
    constructor(){
        this.root = null;
        this.nodeNum = 0;
    }
    // 挿入
    insert(data){
        // 最初の根を追加
        if(this.root == null){
            this.root = this.currentNode = new Node(data);
            this.nodeNum++;
            return;
        }
        // 現在のノードの初期値を根にする
        let current = this.root;
        while(1){
            if(current.value > data){
                // 左のノードが空なら親子関係を構築
                if(current.left == null){
                    current.left = new Node(data);
                    current.left.parent = current;
                    this.nodeNum++;
                    return;
                }
                // 空じゃなければ左の子を現在のノードにする
                current = current.left;
            }else if(current.value <= data){
                // 右のノードが空なら親子関係を構築
                if(current.right == null){
                    current.right = new Node(data);
                    current.right.parent = current;
                    this.nodeNum++;
                    return;
                }
                // 空じゃなければ右の子を現在のノードにする
                current = current.right;
            }else{
                console.log("えらー");
                return;
            }
        }
    }
    // 探索
    find(data){
        // 現在のノードの初期値を根にする
        let current = this.root;
        while(current != null){
            if(current.value == data){
                return true;
            }else if(current.value > data){
                current = current.left;
            }else if(current.value <= data){
                current = current.right;
            }
        }
        return false;
    }
    // 削除
    remove(data){
        // 削除するノードを見つける
        let deleteNode = this.root;
        let exist = false;
        while(deleteNode != null){
            if(deleteNode.value == data){
                exist = true;
                break;
            }else if(deleteNode.value > data){
                deleteNode = deleteNode.left;
            }else if(deleteNode.value <= data){
                deleteNode = deleteNode.right;
            }
        }
        // 親と子のリンクを更新
        const updataLink = (parent, target, replace)=>{
            if(parent.left == target){
                parent.left = replace;
            }else if(parent.right == target){
                parent.right = replace;
            }
        };
        // 削除処理
        if(exist){
            // 子なし
            if(deleteNode.left == null && deleteNode.right == null){
                if(deleteNode == this.root){
                    this.root = null;
                }else{
                    updataLink(deleteNode.parent, deleteNode, null);
                }
                console.log("do notHaveNode remove");
            // 子は左のみ
            }else if(deleteNode.left != null && deleteNode.right == null){
                if(deleteNode == this.root){
                    this.root = deleteNode.left;
                }else{
                    updataLink(deleteNode.parent, deleteNode, deleteNode.left);
                    // 子の親を削除ノードの親に変更
                    deleteNode.left.parent = deleteNode.parent;
                }
                console.log("do HaveLeftNode remove");
            // 子は右のみ
            }else if(deleteNode.left == null && deleteNode.right != null){
                if(deleteNode == this.root){
                    this.root = deleteNode.right;
                }else{
                    updataLink(deleteNode.parent, deleteNode, deleteNode.right);
                    // 子の親を削除ノードの親に変更
                    deleteNode.right.parent = deleteNode.parent;
                }
                console.log("do HaveRightNode remove");
            // 子は両方
            }else{
                // 削除ノードから見て左の最大値を求める
                let minNode = deleteNode.left;
                while(minNode.right != null){
                    minNode = minNode.right
                }
                // minNodeの左に子がいる可能性
                if(minNode.left != null){
                    updataLink(minNode.parent, minNode, minNode.left);
                    minNode.left.parent = minNode.parent;
                }else{
                    updataLink(minNode.parent, minNode, null);
                }
                // 削除ノードと最小ノードを置き換え
                // 根ノードの場合
                if(deleteNode == this.root){
                    this.root = minNode;
                }else{
                    updataLink(deleteNode.parent, deleteNode, minNode);
                }
                // 左置き換え
                minNode.left = deleteNode.left;
                // 右置き換え
                minNode.right = deleteNode.right;
                console.log("do HaveDoubleNode remove");
            }
            this.nodeNum--;
        }else{
            console.log("not find data");
        }
    }
    // ノードの数を返す
    countNode(){
        return this.nodeNum;
    }
    // 深さ優先探索
    dfs(){
        const data = [];
        const inOrder = (node)=>{
            if(node != null){
                inOrder(node.left);
                data.push(node.value);
                inOrder(node.right);
            }
        }
        inOrder(this.root);
        return data;
    }
    // 幅優先探索
    bfs(){
        const data = [];
        const queue = [];
        if(this.root != null) queue.push(this.root);
        while (queue.length > 0) {
            const node = queue.shift();
            data.push(node.value); 
            if (node.left != null) {
                queue.push(node.left);
            }
            if (node.right != null) {
                queue.push(node.right);
            }
        }
        return data;
    }
}

const tree = new BinarySearchTree();
const arr = [5, 3, 8, 2, 1, 4, 9, 6];
for(let i of arr){
    tree.insert(i);
}
console.log(tree.find(5));
console.log(tree.countNode());
console.log(tree.dfs());
console.log(tree.bfs());
tree.remove(5);
tree.remove(3);
console.log(tree.find(5));
console.log(tree.find(3));
console.log(tree.countNode());
console.log(tree.dfs());
console.log(tree.bfs());

// 参考
/*
- https://ja.wikipedia.org/wiki/%E4%BA%8C%E5%88%86%E6%8E%A2%E7%B4%A2%E6%9C%A8
- http://4geek.net/implement-the-binary-search-tree-in-java/
*/