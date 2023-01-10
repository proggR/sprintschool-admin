# NHCC108: Intro To Blockchains & Smart Contracts

---

## Blockchain & Distributed Systems Overview

A blockchain is a distributed database that is used to store and manage data in a decentralized manner. It is a distributed system that consists of a network of nodes that communicate with each other to validate and record transactions on a shared ledger.

Blockchains use cryptography to secure and verify transactions, to protect the privacy and anonymity of users, and to prevent fraud and tampering. Cryptography is a branch of mathematics that deals with the study of algorithms and protocols to secure communication and protect data.

In a blockchain, each node stores a copy of the entire ledger, and all nodes work together to validate and record transactions. When a transaction is made, it is broadcasted to the network, and nodes verify the transaction using cryptographic techniques. If the transaction is valid, it is added to the ledger and broadcasted to the rest of the network.

The ledger is organized into blocks, and each block contains a list of transactions and a cryptographic hash of the previous block. This creates a chain of blocks, hence the name "blockchain." The cryptographic hash function ensures that the data in a block cannot be modified without breaking the chain, making the blockchain secure and tamper-proof.

In summary, a blockchain is a distributed system that uses cryptography to secure and verify transactions, protect privacy, and prevent fraud. It is an innovative technology that has the potential to disrupt many industries and change the way we think about data management and trust.

---

## EVM

The Ethereum Virtual Machine (EVM) is a runtime environment for smart contracts in the Ethereum blockchain. It is a decentralized, global network of computers that executes and verifies smart contracts, which are self-executing contracts with the terms of the agreement between buyer and seller being directly written into lines of code.

The EVM has certain constraints that programmers must consider when designing the architecture of their applications. These constraints include:

    Limited resources: The EVM has limited resources, such as memory and processing power, which can affect the performance and scalability of applications.

    No external access: The EVM does not have access to external resources, such as databases or APIs, which means that data must be stored on the blockchain and retrieved using smart contracts.

    No loops: The EVM does not support infinite loops, which means that programmers must design their algorithms to avoid them.

    Gas: The EVM uses a unit called "gas" to measure the amount of computational effort required to execute a contract. Gas is a limited resource, and programmers must optimize their contracts to use as little gas as possible to avoid running out of gas and causing the contract to fail.

These constraints can change the way a programmer thinks about the architecture of their applications, as they must design their contracts to be efficient, self-contained, and avoid using infinite loops. By understanding the constraints of the EVM, programmers can design more efficient and scalable applications that can take advantage of the benefits of the Ethereum blockchain.

---

## EVM Limits

The Ethereum Virtual Machine (EVM) has several hard-coded limits that programmers must consider when designing their contracts. These limits include:

    Block size: The maximum size of a block on the Ethereum blockchain is currently set at 2,048 kilobytes. This limits the amount of data that can be stored in a block, and it can affect the performance and scalability of applications.

    Block gas limit: The maximum amount of gas that can be used in a single block is currently set at 8,000,000. This limits the amount of computation that can be performed in a single block, and it can affect the performance and scalability of contracts.

    Stack size: The maximum size of the stack is currently set at 1024. This limits the amount of data that can be stored on the stack, and it can affect the performance and scalability of contracts.

    Contract size: The maximum size of a contract is currently set at 2,300,000 bytes. This limits the amount of code and data that can be stored in a contract, and it can affect the performance and scalability of contracts.

    Contract memory size: The maximum size of contract memory is currently set at 2,300,000 bytes. This limits the amount of data that can be stored in contract memory, and it can affect the performance and scalability of contracts.

These limits can affect the performance and scalability of contracts, and programmers must design their contracts to be efficient and optimize the use of resources within these limits.

---

## Solidity Overview

Solidity is a programming language for writing smart contracts on the Ethereum blockchain. It is a high-level language that is similar to other popular languages like JavaScript and Python, and it has a number of features and syntax that are shared with these languages.

Some of the features that Solidity has in common with other languages include:

    Variables: Solidity supports the use of variables to store data, such as integers, strings, and boolean values.

    Functions: Solidity supports the use of functions to organize and reuse code, similar to other languages.

    Control structures: Solidity supports control structures like if-else statements, for loops, and while loops, which are similar to those found in other languages.

    Objects: Solidity supports the use of objects to group related data and functions together, similar to other object-oriented languages.

Despite these similarities, there are also some notable differences between Solidity and other languages. Some of these differences include:

    Types: Solidity has a number of specialized types, such as address, bytes, and enum, which are specific to the Ethereum blockchain.

    Security: Solidity has built-in security features, such as the ability to specify contract visibility and function modifiers, to help prevent common vulnerabilities like reentrancy attacks.

    Gas: Solidity uses a unit called "gas" to measure the amount of computational effort required to execute a contract. Gas is a limited resource, and programmers must optimize their contracts to use as little gas as possible to avoid running out of gas and causing the contract to fail.

Overall, Solidity is a powerful language that combines the simplicity and familiarity of other popular languages with specialized features and security considerations that are specific to the Ethereum blockchain.

---

## Solidity Example

```
// Contract 1
pragma solidity ^0.7.0;

import "./Contract2.sol";

contract Contract1 {
    address public owner;
    Contract2 public contract2;

    constructor() public {
        owner = msg.sender;
        contract2 = new Contract2();
    }

    function doSomething() public {
        // Call function in Contract2
        contract2.doSomethingElse(msg.sender);
    }
}
```

---

```
// Contract 2
pragma solidity ^0.7.0;

contract Contract2 {
    address public owner;
    mapping(address => bool) public whitelist;

    constructor() public {
        owner = msg.sender;
    }

    function doSomethingElse(address _sender) public {
        require(whitelist[_sender], "Address is not on the whitelist");
        // Do something
    }
}
```

---

## Solidity `msg` Object

The msg object in Solidity represents information about the current message that is being processed. It contains a number of properties and functions that provide information about the message and the context in which it is being processed.

Here are the properties and functions of the msg object:

    msg.sender: The address of the account that sent the message.
    msg.value: The value of the message, in wei. This can be used to determine the amount of ether that was sent along with the message.
    msg.data: The data of the message, as a byte array. This can be used to access any data that was included with the message.
    msg.gas: The amount of gas that is available to the message. This can be used to determine the amount of computation that the message can perform.
    msg.gasprice: The gas price of the message, in wei. This can be used to determine the cost of executing the message.
    msg.sig: The signature of the message, as a byte array. This can be used to verify the authenticity of the message.

Here are some examples of how these properties and functions can be used:

    msg.sender can be used to determine the address of the account that sent the message.
    msg.value can be used to determine the amount of ether that was sent with the message.
    msg.data can be used to access any data that was included with the message, such as function parameters.
    msg.gas can be used to determine the amount of gas that is available to the message, which can be used to optimize the gas usage of the message.
    msg.gasprice can be used to determine the cost of executing the message, which can be used to calculate the cost of executing a contract.
    msg.sig can be used to verify the authenticity of the message, by checking the signature against the public key of the sender.
