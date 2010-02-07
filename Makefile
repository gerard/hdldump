INSTALL_PATH=/usr/local
COMPLETION_PATH=/etc/bash_completion.d

all:
	@echo Nothing to be done here...

install:
	cp hdldump.sh $(INSTALL_PATH)/lib/hdldump.sh
	cp bash_completion.d/hdldump $(COMPLETION_PATH)
