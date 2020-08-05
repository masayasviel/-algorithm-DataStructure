#include <iostream>
using namespace std;

struct Node {
    int value;
    Node *next;
};

struct Linked_list{
private:
    Node *head;
    Node *tale;
public:
    Linked_list() {
        head = NULL;
    };
    void append(int);
    void print_list();
};

void Linked_list::append(int v) {
    Node *new_node;
    new_node = new Node;
    new_node->value = v;
    new_node->next = NULL;
    if(head == NULL) {
        head = new_node;
        tale = new_node;
    } else {
        tale->next = new_node;
        tale = new_node;
    }
}

void Linked_list::print_list() {
    Node *current_node;
    current_node = head;
    do {
        cout << current_node->value;
        current_node = current_node->next;
    } while (current_node != NULL);
}

int main() {
    int n, input;
    cin >> n;
    Linked_list list;
    for (int i = 0; i < n; i++) {
        cin >> input;
        list.append(input);
    }
    list.print_list();
}