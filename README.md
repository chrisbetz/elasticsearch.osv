# elasticsearch.osv
So far, this is a toy project to try out to run [Elasticsearch](https://www.elastic.co/products/elasticsearch) in an [OSv](http://osv.io/) unikernel.



# Setting up OSv/Capstan correctly on Mac OS X.

On OS X, I had some trouble first building new OSv images. I finally figured out it had to do with my firewall / security setting for qemu. So, if you also encounter problems, try this first:

Make sure you have cleaned old artefacts if you encountered problems.

    capstan delete elasticsearch.osv


and delete the related files/folders under `~/.capstan/repository/elasticsearch.osv`.


Install qemu using homebrew:

    brew install qemu


Find out where your qemu is located:

    which qemu-system-x86_64

For me it was `/usr/local/bin/qemu-system-x86_64`.

Run ``/usr/local/bin/qemu-system-x86_64` and make sure to open your firewall by accepting incoming network requests to qemu.

And make sure to export CAPSTAN_QEMU_PATH ([track this issue](https://github.com/cloudius-systems/capstan/issues/152)):

    export CAPSTAN_QEMU_PATH=/usr/local/bin/qemu-system-x86_64

Now you should be good to go.
