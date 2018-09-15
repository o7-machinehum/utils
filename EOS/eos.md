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

- cleos info
cleos --url http://127.0.0.1:8888 get info
