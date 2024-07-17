# Rentavle SDK Documentation (Python)

Welcome to the Rentavle SDK for Python! This guide covers everything you need to start using the Rentavle SDK in your Python projects.

## Table of Contents

- Installation
- Configuration
- Getting Started
- Example code for all functions

## Installation

To start using the Rentavle SDK, you first need to install the package via pip:

```bash
pip install rentavle-sdk
```

## Configuration

Before you can interact with the Rentavle APIs, you need to setup your SDK with the necessary configuration:

```python
from rentavle_sdk import RentavleSDK

sdk = RentavleSDK(
    api_endpoint="https://www.rentavle.com/bapi",
    chain_id="0x100"
)
```

Here, `api_endpoint` is the URL of the Rentavle API, and `chain_id` is the ID of the blockchain you are interacting with.

## Getting Started

### get_rentavle_contract_detail

```python
def get_rentavle_contract_detail():
    try:
        response = sdk.get_rentavle_contract_detail("cxfdbfc5b5b330df8481e17f6872d985ade4986ee8")
        print('Response:', response)
    except Exception as error:
        print('Error fetching contract details:', str(error))

get_rentavle_contract_detail()
```

## Example code for all functions

```python
from rentavle_sdk import RentavleSDK

def example_usage():
    sdk = RentavleSDK(api_endpoint="https://www.rentavle.com/bapi", chain_id="0x100")

    # Predefined variables
    contract_address = 'cxfdbfc5b5b330df8481e17f6872d985ade4986ee8'
    owner_address = 'hx651b2ae281d1c9448de826635e0d73102df72927'
    borrower_address = 'hx651b2ae281d1c9448de826635e0d73102df72927'
    token_id = 99999900036

    try:
        # Example: Fetching detail of a specific Rentavle contract
        contract_detail = sdk.get_rentavle_contract_detail(contract_address)
        print('Contract Detail:', contract_detail)

        # Example: Fetching all registered NFT collections
        collections = sdk.get_all_registered_nft_collections(size=10, cursor="")
        print('Registered NFT Collections:', collections)

        # Example: Fetching list of NFTs owned by an address
        owned_nfts = sdk.get_list_of_nfts_owned_by(owner_address, size=10, cursor="")
        print('NFTs Owned:', owned_nfts)

        # Example: Fetching list of NFTs of a specific contract owned by a particular address
        nfts_by_contract = sdk.get_list_of_nfts_by_contract_owned_by(contract_address, owner_address, size=10, cursor="")
        print('NFTs By Contract Owned:', nfts_by_contract)

        # Example: Fetching list of contracts owned by an address
        contracts_owned = sdk.get_list_of_contracts_owned_by(owner_address, size=10, cursor="")
        print('Contracts Owned:', contracts_owned)

        # Example: Fetching list of NFTs by specific contract
        nfts_by_contract_general = sdk.get_list_of_nfts_by_contract(contract_address, size=10, cursor="")
        print('NFTs By Contract:', nfts_by_contract_general)

        # Example: Borrowed NFTs by a borrower address
        borrowed_nfts = sdk.get_list_of_nfts_borrowed_by(borrower_address, size=10, cursor="")
        print('Borrowed NFTs:', borrowed_nfts)

        # Example: Lent NFTs by a lender address
        lent_nfts = sdk.get_list_of_nfts_lent_by(borrower_address, size=10, cursor="")
        print('Lent NFTs:', lent_nfts)

    except Exception as e:
        print('Failed to operate SDK:', str(e))

example_usage()
```
