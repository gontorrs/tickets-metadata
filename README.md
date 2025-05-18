# 🎟 NFT Tickets - Proyecto de Entradas en Blockchain (Sepolia)

Este proyecto es una plataforma completa para la venta de entradas en formato NFT sobre la testnet **Sepolia** de Ethereum. Incluye:

- Un **frontend web responsive** desarrollado con **Tailwind CSS** y **Ethers.js**.
- Una colección de **imágenes y metadatos** para cada tipo de entrada.
- Una infraestructura Dockerizada lista para producción.

Todo preparado para trabajar con **MetaMask**, contratos inteligentes en Solidity, y desplegarlo con un solo comando.

---
## ¿Qué incluye?

- Interfaz para comprar NFTs conectada con **MetaMask**.
- Smart contract desplegado en Sepolia.
- 4 tipos de entradas NFT: General, VIP, Premium y Backstage.
- Integración visual con imágenes personalizadas.
- Sistema listo para ser desplegado como contenedor Docker.

---

## Tipos de entradas

| Tipo de entrada | ID del token | Precio (ETH) | Imagen             |
|-----------------|--------------|---------------|--------------------|
| General         | 0            | 0.01 ETH      | `general.png`      |
| VIP             | 1            | 0.03 ETH      | `vip.png`          |
| Premium         | 2            | 0.05 ETH      | `premium.png`      |
| Backstage       | 3            | 0.1 ETH       | `backstage.png`    |

---

## Requisitos previos

- Docker + Docker Compose
- Navegador con MetaMask instalado
- Algo de ETH de prueba en la red Sepolia

---

## Cómo desplegar el proyecto

Desde la raíz del proyecto:

```bash
docker compose up --build
```
Accede desde el navegador a:

[http://localhost:8080](http://localhost:8080)

---

Contrato en Sepolia
----------------------

* Dirección: `0xEC94D6F1d0557BB0Ba490D3A11e72A76b3233f76`  
* Ver en [Etherscan Sepolia](https://sepolia.etherscan.io/address/0xEC94D6F1d0557BB0Ba490D3A11e72A76b3233f76)

---

Autores
----------

Este proyecto ha sido desarrollado por:

* **Claudia Ortiz**
* **Paula de la Hoz**
* **Guillermo Pérez Pérez**
* **Gonzalo Torras**

En la UFV (Universidad Francisco de Vitoria).