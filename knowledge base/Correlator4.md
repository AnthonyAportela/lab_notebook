An FPGA at Fermilab which I can log into using similar credentials to [LPC](<knowledge base/LPC>).

I first need to add the following to my `.ssh/config` on my local machine:
```
Host correlator4.fnal.gov
    User rmarroqu
    GSSAPIAuthentication yes
    GSSAPIDelegateCredentials yes
    StrictHostKeyChecking no
    UserKnownHostsFile /dev/null
```
Then I log in using the following:
```bash
ssh aaportel@correlator4.fnal.gov
```
as well as whatever appropriate `kinit` config I need to use. I should probably also eventually add a [`kerberos`](kerberos.md) tutorial so I don't have to keep googling it.