## How to 

### Crypto 

    Its possible to make more easy the transfers using:
    paypal
    crypto platform with api

### Example

Show all crypto prices

Show all options

    devops.bat api coinbase
    >    wallet
    >    price
    >    crypto
    >    history 


Show all crypto

    devops.bat api coinbase show crypto
    >    LTC
    >    BTC
    >    ETH 

    devops.bat api coinbase show price list
    >    LTC = 121
    >    BTC = 1221312
    >    ETH = 2144
    
Show price, as default in $
    
    devops.bat api coinbase price BTC 
    >   1221312
    
    devops.bat api coinbase price BTC in EUR 
    >    1221312
    
Buy BTC

    devops.bat api coinbase buy 0.12 BTC

Sell BTC
    
    devops.bat api coinbase sell 0.12 BTC


### Another markets

    devops.bat api binance buy 0.12 BTC
