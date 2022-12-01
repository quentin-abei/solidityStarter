// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }
    // an array of Todo struct
    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        //1. calling it like a function
        todos.push(Todo(_text, false));

        //key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // initialize an empty struct
        // then update it
        Todo memory todo;
        todo.text  = _text;
        //todo.completed is false

        todos.push(todo);
    }

    //solidity auto created a getter for "todos"
    // so we don't actually need this function

    function get(uint _index) public view returns (string memory text, bool completed) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted (uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}