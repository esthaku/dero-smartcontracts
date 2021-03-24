# DERO Stargate Smart Contracts - Stargate RC2

## pot.bas

People are blindly `Ticking` the SC with a random amount of tokens.
Last ticker earns the total amount of the pot (minus fees).

The game has a "snow ball" restart strategy: more ticks will be required to win leading to a potential bigger pot.

E.g. with a 3 ticks SC

```
deroproof1qxqzz69g8pstqnfw6awpakxd7x8tnw0vjrnrsmzmeghhn3hckmu2dsfpvft92qqzn5zz3 tick of 2 DERO => pot 2
deroproof1qxqzz69g8pstqnfw6awpakxd7x8tnw0vjrnrsmzmeghhn3hckmu2dsfpvft92qqzn5zz2 tick of 1 DERO => pot 3
deroproof1qxqzz69g8pstqnfw6awpakxd7x8tnw0vjrnrsmzmeghhn3hckmu2dsfpvft92qqzn5zz1 tick of 0.0001DERO => WIN pot 3.0001 DERO
```


### Initialize Contract 

You will be registered as `owner` of the SC but this gives you no ways of interacting with it yet.

```
curl --request POST --data-binary @pot.bas http://127.0.0.1:40403/install_sc
```

### Tick for 1 DERO
```
curl http://127.0.0.1:40403/json_rpc -d '{"jsonrpc":"2.0","id":"0","method":"scinvoke","params":{"sc_dero_deposit":10000,"scid":"04f34d243f76b00512f46350db1de4e33a6d3b886ef7f20c6c6640fbd28a1de6","sc_rpc":[{"name":"entrypoint","datatype":"S","value":"Tick"}] }}' -H 'Content-Type: application/json'
```

### Missing

- Minimum tick amount
- Different strategy
- Randomly loading strategy