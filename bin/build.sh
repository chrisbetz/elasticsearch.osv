export CAPSTAN_QEMU_PATH=/usr/local/bin/qemu-system-x86_64
capstan delete elasticsearch.osv
capstan delete elasticsearch-1.osv
capstan delete elasticsearch-2.osv
capstan delete elasticsearch-3.osv
rm -rvf ~/.capstan/repository/elasticsearch.osv/
rm -rvf ~/.capstan/repository/elasticsearch-[0-9]*.osv/
capstan build -v -p vbox

mkdir ~/.capstan/repository/elasticsearch-1.osv/
cp ~/.capstan/repository/elasticsearch.osv/elasticsearch.osv.vbox ~/.capstan/repository/elasticsearch-1.osv/elasticsearch-1.osv.vbox
VBoxManage internalcommands sethduuid ~/.capstan/repository/elasticsearch-1.osv/elasticsearch-1.osv.vbox 6ab12522-1dfd-412a-82a7-ddb6cbe6f2fd

mkdir ~/.capstan/repository/elasticsearch-2.osv/
cp ~/.capstan/repository/elasticsearch.osv/elasticsearch.osv.vbox ~/.capstan/repository/elasticsearch-2.osv/elasticsearch-2.osv.vbox
VBoxManage internalcommands sethduuid ~/.capstan/repository/elasticsearch-2.osv/elasticsearch-2.osv.vbox 1d0f7bd4-ac7f-4f45-9d5a-16bb255b7687

mkdir ~/.capstan/repository/elasticsearch-3.osv/
cp ~/.capstan/repository/elasticsearch.osv/elasticsearch.osv.vbox ~/.capstan/repository/elasticsearch-3.osv/elasticsearch-3.osv.vbox
VBoxManage internalcommands sethduuid ~/.capstan/repository/elasticsearch-3.osv/elasticsearch-3.osv.vbox 66fc45b9-f8bb-4b3b-8d02-a010c8300f77
