# ZcashdUtilities
Helper scripts for using zcashd. Will need a running and synced zcashd installed. See here for more info:

https://github.com/ZecHub/zechub/blob/main/site/guides/RaspberryPi4FullNode.md

## Prerequisites

`chmod + x` all .sh files and use as needed.
`sudo apt install qrencode` (if you want QR codes)

```
* myBalance.sh                               // Display Balance of given UA account number
* displayAddress.sh (requres qrencode)       // Optional: display QR code of address for easy reload of funds
* sendOwl.sh                                 // Send private funds/memos. Dev version includes results.sh built in and support for alias's
* results.sh                                 // Display results of reading a given opcode.
```

## DEV version

For the latest updates, check out the dev folder. *They are changed often*

## Private Memos

![Screenshot_2023-09-11_18-22-30](https://github.com/dismad/zcashdUtilities/assets/81990132/8179c292-c577-4d1c-8aeb-a221dfda299e)


## Send Owl Example
In your terminal add your addresses:

z1="from address"

z2="to address"

`./sendOwl.sh $z1 $z2 0.001 6f776c54455354 null FullPrivacy | ./results.sh`

where `6f776c54455354` is your memo in hex, this can be anything you want.

`0.001` is the amount of ZEC to send

Note: you may need to update the privacy policy depending on the type of addresses you use.

See [here](https://zcash.github.io/rpc/z_sendmany.html).

## Check balance for UA account 0 ( Example )
`./myBalance.sh 0`

## DisplayAddress
![Screenshot_2023-09-11_18-25-02](https://github.com/dismad/zcashdUtilities/assets/81990132/f6d1ae42-c657-46c8-9bf6-26d05cef0e8a)


