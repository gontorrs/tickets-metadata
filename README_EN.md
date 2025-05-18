# 🎟 NFT Tickets - Blockchain Ticketing Project (Sepolia)

This project is a complete platform for selling tickets as NFTs on Ethereum’s **Sepolia** testnet. It includes:

- A **responsive web frontend** built with **Tailwind CSS** and **Ethers.js**.  
- A collection of **images and metadata** for each ticket type.  
- A **Dockerized infrastructure** ready for production.  

Everything is set up to work with **MetaMask**, Solidity smart contracts, and can be deployed with a single command.

---

## What’s included?

- Interface for purchasing NFTs integrated with **MetaMask**.  
- Smart contract deployed on Sepolia.  
- 4 NFT ticket types: General, VIP, Premium, and Backstage.  
- Visual integration with customized images.  
- System ready to be deployed as a Docker container.

---

## Ticket types

| Ticket type | Token ID | Price (ETH) | Image            |
|--------------|-----------|--------------|------------------|
| General      | 0         | 0.01 ETH     | `general.png`    |
| VIP          | 1         | 0.03 ETH     | `vip.png`        |
| Premium      | 2         | 0.05 ETH     | `premium.png`    |
| Backstage    | 3         | 0.1 ETH      | `backstage.png`  |

---

## Prerequisites

- Docker + Docker Compose  
- Browser with MetaMask installed  
- Some test ETH on the Sepolia network  

---

## How to deploy the project

From the project root:
```bash
docker compose up --build
```

Then access in your browser at:

[http://localhost:8080](http://localhost:8080)

---

## Contract on Sepolia

* Address: `0xEC94D6F1d0557BB0Ba490D3A11e72A76b3233f76`  
* View on [Etherscan Sepolia](https://sepolia.etherscan.io/address/0xEC94D6F1d0557BB0Ba490D3A11e72A76b3233f76)

---

## Authors

This project was developed by:

* **Claudia Ortiz**  
* **Paula de la Hoz**  
* **Guillermo Pérez Pérez**  
* **Gonzalo Torras**

At UFV (Universidad Francisco de Vitoria).