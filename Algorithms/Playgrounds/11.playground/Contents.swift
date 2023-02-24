import UIKit

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

func reverse(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        print("Prev \(prev?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(next?.value ?? -1)")
        
        prev = currentNode
        currentNode = next
    }
    
    return prev
}

let myReversedList = reverse(head: oneNode)
