import UIKit

class Node {
    var operation: String? // +,-,/,*
    let value: Float?
    var leftChild: Node?
    var rightChild: Node?
    
    init(operation: String?, value: Float?, leftChild: Node?, rightChild: Node?) {
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}
 
let sixNode = Node(operation: nil, value: 6, leftChild: nil, rightChild: nil)
let fiveNode = Node(operation: nil, value: 5, leftChild: nil, rightChild: nil)
let twentyFiveNode = Node(operation: nil, value: 25, leftChild: nil, rightChild: nil)
let mult25_6Node = Node(operation: "*", value: nil, leftChild: twentyFiveNode, rightChild: sixNode)
let rootPlusNode = Node(operation: "+", value: nil, leftChild: mult25_6Node, rightChild: fiveNode)

func evaluate(node: Node) -> Float {
    
    if node.value != nil {
        return node.value!
    }
    
    if node.operation == "+" {
        return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
    } else if node.operation == "*" {
        return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
    } else if node.operation == "-" {
        return evaluate(node: node.leftChild!) - evaluate(node: node.rightChild!)
    } else if node.operation == "/" {
        return evaluate(node: node.leftChild!) / evaluate(node: node.rightChild!)
    }
    
    return 0
}

print(evaluate(node: rootPlusNode))
