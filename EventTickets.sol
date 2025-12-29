// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";


contract EventTickets is ERC1155, Ownable, ERC1155Burnable {
    // Ticket type IDs
    uint256 public constant GENERAL = 0;
    uint256 public constant VIP = 1;
    uint256 public constant PREMIUM = 2;
    uint256 public constant BACKSTAGE = 3;

    // Pricing and supply
    mapping(uint256 => uint256) public prices;
    mapping(uint256 => uint256) public maxSupply;
    mapping(uint256 => uint256) public currentSupply;

    constructor()
        ERC1155("")
        Ownable(msg.sender)
    {
        // Set prices (in wei)
        prices[GENERAL] = 0.01 ether;
        prices[VIP] = 0.03 ether;
        prices[PREMIUM] = 0.05 ether;
        prices[BACKSTAGE] = 0.1 ether;

        // Set maximum supply
        maxSupply[GENERAL] = 100;
        maxSupply[VIP] = 50;
        maxSupply[PREMIUM] = 20;
        maxSupply[BACKSTAGE] = 10;
    }

    // Public minting with ETH payment
    function mint(uint256 id, uint256 amount) public payable {
        require(id <= BACKSTAGE, "Tipo de entrada no valida");
        require(currentSupply[id] + amount <= maxSupply[id], "Excede suministro maximo");
        require(msg.value >= prices[id] * amount, "Cantidad insuficiente de ETH enviada");

        currentSupply[id] += amount;
        _mint(msg.sender, id, amount, "");
    }

    // Mint by owner (free)
    function mintByOwner(address to, uint256 id, uint256 amount, bytes memory data) public onlyOwner {
        require(currentSupply[id] + amount <= maxSupply[id], "Excede suministro maximo");
        currentSupply[id] += amount;
        _mint(to, id, amount, data);
    }

    // Batch mint
    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        for (uint256 i = 0; i < ids.length; i++) {
            require(currentSupply[ids[i]] + amounts[i] <= maxSupply[ids[i]], "Excede suministro maximo");
            currentSupply[ids[i]] += amounts[i];
        }
        _mintBatch(to, ids, amounts, data);
    }

    // Return hardcoded URIs per token ID
    function uri(uint256 id) public pure override returns (string memory) {
        if (id == 0) {
            return "https://raw.githubusercontent.com/Guichp/tickets-metadata/main/0.json";
        } else if (id == 1) {
            return "https://raw.githubusercontent.com/Guichp/tickets-metadata/main/1.json";
        } else if (id == 2) {
            return "https://raw.githubusercontent.com/Guichp/tickets-metadata/main/2.json";
        } else if (id == 3) {
            return "https://raw.githubusercontent.com/Guichp/tickets-metadata/main/3.json";
        } else {
            revert("URI para token no existente");
        }
    }

    // Withdraw collected ETH
    function withdraw() public onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
}