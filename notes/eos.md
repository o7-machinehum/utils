# Read This:
https://medium.com/coinmonks/understanding-the-eosio-token-contract-87466b9fdca9

# eosjs 
- Getting Account Info
	- eos.getAccount('itamnetwork1').then(result => console.log(result))

# EOSIO
- From ~/eos/build
  - Copy etc/share/lib/var to usr/local/xyz

## nodeos (Block Producer)
- Starting
	- $ nodeos -e -p eosio --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin --contracts-console
- config.ini file
	- /usr/local/etc/eosio/node_bios/config.ini

- New project
~/eos/build/contracts$ ../tools/eosiocpp -n Worlds

## cleos
Public: EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV
Private: 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
Password: PW5Jntuy8qhLM76vDGNEfRfyczWgcQQgkXnxKZN8FunnWmy1ydtfb

HomePW: PW5KeRieFKqaKQh4kYXCRQYqF6Te3adiVJzgHLYTZnDrvhrPRdkya

- cleos info
$ cleos --url http://127.0.0.1:8888 get info

- Create Wallet
$ cleos wallet create --to-console

- Wallet Location
~/eosio-wallet/

- Unlock Wallet
$ cleos wallet unlock --password PW5Jntuy8qhLM76vDGNEfRfyczWgcQQgkXnxKZN8FunnWmy1ydtfb

- New Keypair
$ cleos create key --file key

- Import key into wallet
$ cleos wallet import --private-key <PrivateKey>

- New Account
$ cleos create account eosio <AccountName> <Public>

- Get info from public
cleos get account <public>

- Get info from account name
cleos get accounts <AccName>

- Deploy Smart Contract
	- First make account for SC
		$ cleos create account <AccName> <ContractName> <Public>
	- Then Deploy contract 
		$ cleos set contract <AccName> /contract/location/ -p <AccName>@active

- Pushing Actions
$ cleos push action <ContractName> <FunctionName> '[ "<arg1>", "<arg2>"]' -p <ContractName>@active
	- The -p is indicating that user eosio.token is authorising this action. 

## eosiocpp
https://developers.eos.io/eosio-cpp/docs/introduction-to-smart-contracts
$ eosiocpp -o <input>.wast <input>.cpp
$ eosiocpp -g <input>.abi <input>.cpp

### Tables
https://medium.com/coinmonks/using-table-on-eos-smart-contract-291f98312b80

This is really good:
https://www.youtube.com/watch?v=PamSV-WGcZo

public:

private:
	// @abi table profiles i64 //<- This means the First 64bit veriable will be used to look it up.
	struct profile{
			// uint64_t key;
			account_name account; // <-- Since account_name is typedefed to a uint64 we can use it as the key.
			account_name primary_key() const {return account;}
			EOSLIB_SERIALIZE(profile, (account))
		};
		
	}
	typedef eosio::multi_index<N(profiles), profile> profile_table // Create container of elements
	// Since we don't want to instantuate this right away we typedef it. We can now use profile_table to instantaute it.


## Token Stuff
- Get Balance
$ cleos get currency balance <Contract> <AccountName>

## Deps
eosiolib/currency.hpp

## Open Questions
