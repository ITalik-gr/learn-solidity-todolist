// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract simpleTodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }
    function updateText(string calldata _text, uint _index) external {
        todos[_index].text = _text;
    }
    function get(uint _index) external view returns(string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    function changeCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}