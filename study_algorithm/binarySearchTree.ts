namespace binarySearchTree {
    class Node<T> {
        private v: T;
        private l: Node<T> | undefined;
        private r: Node<T> | undefined;
        constructor(init_value: T) {
            this.v = init_value;
        }
        // getter
        public get value(): T {
            return this.v;
        }
        public get left(): Node<T> {
            return this.l;
        }
        public get right(): Node<T> {
            return this.r;
        }
        // setter
        public set left(node: Node<T>) {
            this.l = node;
        }
        public set right(node: Node<T>) {
            this.r = node;
        }
    }
    export class BST<T> {
        private root: Node<T> | undefined;
        private nodeCount: number;
        constructor(){
            this.nodeCount = 0;
        }
        /**
         * ノードの生成
         * @param value ノードの持つ値
         */
        public insert(value: T): void {
            if (typeof this.root === "undefined") {
                this.root = new Node<T>(value);
                this.nodeCount++;
                return;
            }
            let currentNode: Node<T> | undefined = this.root;
            while(true) {
                if (currentNode.value > value) {
                    // left
                    if(typeof currentNode.left === "undefined"){
                        currentNode.left = new Node<T>(value);
                        this.nodeCount++;
                        return;
                    }
                    currentNode = currentNode.left;
                } else {
                    // right
                    if(typeof currentNode.right === "undefined"){
                        currentNode.right = new Node<T>(value);
                        this.nodeCount++;
                        return;
                    }
                    currentNode = currentNode.right;
                }
            }
        }
        /**
         * 探索
         * @param value 探索対象
         * @returns `value`を持っているor持っていない
         */
        public find(value: T): boolean {
            let currentNode: Node<T> | undefined = this.root;
            while(typeof currentNode !== "undefined"){
                if(currentNode.value == value){
                    return true;
                }else if(currentNode.value > value){
                    currentNode = currentNode.left;
                }else if(currentNode.value <= value){
                    currentNode = currentNode.right;
                }
            }
            return false;
        }
        /**
         * 親子関係を繋ぎなおす
         * @param parent 対象の親ノード
         * @param target 対象ノード
         * @param replace 変更先ノード
         */
        private updataLink(parent: Node<T>, target: Node<T>, replace: Node<T> | undefined): void {
            if(parent.left == target){
                parent.left = replace;
            }else if(parent.right == target){
                parent.right = replace;
            }
        }
        /**
         * 削除
         * @param value 削除対象
         * @returns 値を削除できたかどうか
         */
        public remove(value: T): boolean {
            let deleteNode: Node<T> | undefined = this.root;
            let parent: Node<T> | undefined = undefined;
            let exist = false;
            while(typeof deleteNode !== "undefined"){
                if(deleteNode.value == value){
                    exist = true;
                    break;
                }else if(deleteNode.value > value){
                    parent = deleteNode;
                    deleteNode = deleteNode.left;
                }else if(deleteNode.value <= value){
                    parent = deleteNode;
                    deleteNode = deleteNode.right;
                }
            }
            if (!exist) return exist;

            if(typeof deleteNode.left === "undefined" && typeof deleteNode.right === "undefined") {
                if (deleteNode === this.root) {
                    this.root = undefined;
                } else {
                    this.updataLink(parent, deleteNode, undefined);
                }
            } else if (typeof deleteNode.left !== "undefined" && typeof deleteNode.right === "undefined") {
                if (deleteNode === this.root) {
                    this.root = this.root.left;
                } else {
                    this.updataLink(parent, deleteNode, deleteNode.left);
                }
            } else if (typeof deleteNode.left === "undefined" && typeof deleteNode.right !== "undefined") {
                if (deleteNode === this.root) {
                    this.root = this.root.right;
                } else {
                    this.updataLink(parent, deleteNode, deleteNode.right);
                }
            } else {
                let minParent: Node<T> | undefined = deleteNode;
                let minNode: Node<T> | undefined = deleteNode.right;
                while (typeof minNode.left !== "undefined") {
                    minParent = minNode;
                    minNode = minNode.left;
                }
                if (minParent === deleteNode) {
                    minParent.right = minNode.right;
                } else {
                    minParent.left = minNode.right;
                }
                minNode.left = deleteNode.left;
                minNode.right = deleteNode.right;
                if (deleteNode === this.root) {
                    this.root = minNode;
                } else {
                    this.updataLink(parent, deleteNode, minNode);
                }
            }
            this.nodeCount--;
            return exist;
        }
        /**
         * 深さ優先探索
         * @returns 深さ優先探索順のlist
         */
        public dfs(): T[] {
            const res: T[] = [];
            const stack = [];
            if(typeof this.root !== "undefined") stack.push(this.root);
            while (stack.length > 0) {
                const node = stack.pop();
                res.push(node.value); 
                if (typeof node.left !== "undefined") {
                    stack.push(node.left);
                }
                if (typeof node.right !== "undefined") {
                    stack.push(node.right);
                }
            }
            return res;
        }
        /**
         * 幅優先探索
         * @returns 幅優先探索順のlist
         */
        public bfs(): T[] {
            const res: T[] = [];
            const queue = [];
            if(typeof this.root !== "undefined") queue.push(this.root);
            while (queue.length > 0) {
                const node = queue.shift();
                res.push(node.value); 
                if (typeof node.left !== "undefined") {
                    queue.push(node.left);
                }
                if (typeof node.right !== "undefined") {
                    queue.push(node.right);
                }
            }
            return res;
        }
        /**
         * 子要素数
         * @returns 子要素数
         */
        public get count(): number {
            return this.nodeCount;
        }
    }
}

// 参考
/*
- https://ja.wikipedia.org/wiki/%E4%BA%8C%E5%88%86%E6%8E%A2%E7%B4%A2%E6%9C%A8
- http://4geek.net/implement-the-binary-search-tree-in-java/
*/