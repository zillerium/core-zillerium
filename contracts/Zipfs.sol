pragma solidity ^0.4.8;
contract Zipfs {
    string storedData;

    function set(string x) {
        storedData = x;
    }

    function get() constant returns (string x) {
        return storedData;
    }
}