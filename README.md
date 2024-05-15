# GreatestNumber in Solidity

A solidity program that finds the greatest number among the given set of numbers.

## Description

The smart contract written in solidy is required to have a modifier to help allow 
the owner of the smart contract to person certain actions - like calling the getGreatestNumber function.

   ```solidity
    modifier onlyOwner{
        require (owner == msg.sender, "Only the owner of this contract can access");
        _;
    }
   ```
   This is the syntax of a modifier function.


## Getting started

### Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The "GreatestNumber!" contract

   This is an example of a smart contract in solidity showing how modifiers work.
   "GreatestNumber.sol" in `contracts` contains the code.

3. Prepare the migration

   "2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var GreatestNumber = artifacts.require("GreatestNumber");
   module.exports = function(deployer) {
     deployer.deploy(GreatestNumber);
   }
   ```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await GreatestNumber.deployed()
   instance.setNumbers(4, 3, 10, 13)
   instance.getGreatestNumber()
   ```
   Note that 4, 3, 10 and 13 provided can be any set of numbers you desire.

   Then you will see:

   ```bash
   13
   ```

## Authorg

Retnaa Maxwell Dayok  
[@rdayok](https://www.linkedin.com/in/retnaa-dayok-45207219b/)
