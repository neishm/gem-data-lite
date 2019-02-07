all: gem-data-lite_4.2.0_all.ssm

gem-data_4.2.0_all.ssm:
	wget http://collaboration.cmc.ec.gc.ca/science/ssm/gem-data_4.2.0_all.ssm

gem-data_4.2.0_all: gem-data_4.2.0_all.ssm
	rm -Rf $@
	tar -xzvf $<
	touch $@

gem-data-lite_4.2.0_all: gem-data_4.2.0_all files.cfg
	rm -Rf $@
	rsync -av --files-from=files.cfg $< $@
	./compress.sh $@

gem-data-lite_4.2.0_all.ssm: gem-data-lite_4.2.0_all
	tar -czf $@ $<
