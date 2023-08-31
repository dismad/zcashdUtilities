# zcashdUtilities
Helper scripts for using zcashd. Will need a running and synced zcashd installed. See here for more info:

https://github.com/ZecHub/zechub/blob/main/site/guides/RaspberryPi4FullNode.md

chmod +x all .sh files and use as needed.

# dev version

For the latest updates, check out the dev folder. *They are changed often*

## Send Owl
In your terminal add your addresses:

z1="from address"

z2="to address"

`./sendOwl.sh $z1 $z2 0.001 6f776c54455354 null FullPrivacy | ./results.sh`

where `6f776c54455354` is your memo in hex, this can be anything you want.

`0.001` is the amount of ZEC to send

Note: you may need to update the privacy policy depending on the type of addresses you use.

See [here](https://zcash.github.io/rpc/z_sendmany.html).

## Check balance for UA account 0 ( Example )
./myBalance.sh 0
