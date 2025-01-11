# Race Condition in transferOwnership Function

This repository demonstrates a race condition vulnerability in a Solidity smart contract's `transferOwnership` function.  The vulnerability allows an attacker to exploit a timing window to manipulate the ownership transfer, potentially gaining control of the contract unexpectedly.

## Vulnerability Details

The `transferOwnership` function lacks sufficient protection against reentrancy attacks. This means that if an external call is made within the function and that external call tries to modify contract state, the contract state might be inconsistent.

## How to Reproduce

1. Clone this repository.
2. Compile the contract using a Solidity compiler (e.g., solc).
3. Deploy the contract to a test network or local blockchain environment.
4. Attempt to exploit the vulnerability using a transaction that calls `transferOwnership` multiple times during the transfer process.

## Mitigation

The solution involves using the Checks-Effects-Interactions pattern to avoid the race condition and secure the ownership transfer. This ensures that state changes are properly protected against reentrancy attacks.

## Disclaimer

This repository is for educational purposes only.  Use of this code in a production environment is strongly discouraged. Always conduct thorough security audits before deploying any smart contract to mainnet.