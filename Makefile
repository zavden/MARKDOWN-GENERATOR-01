SHELL=/bin/bash
BUILD=go run
t=P-01
p=c1/ej1.go
mk=go
run: code

build:
	@if [ -f $(t).md ];				\
	then						\
		cat /dev/null > $(t).md;		\
		echo "# $(t)" >> $(t).md;	\
		echo "Programa: " >> $(t).md;	\
		echo "" >> $(t).md;		\
		echo "\`\`\`$(mk)" >> $(t).md;	\
		cat $(p) >> $(t).md;		\
		echo "\`\`\`" >> $(t).md;		\
		echo "" >> $(t).md; \
		echo "Salida: " >> $(t).md; \
		echo "\`\`\`" >> $(t).md; \
		$(BUILD) $(p) >> $(t).md; \
		echo "\`\`\`" >> $(t).md; \
	else						\
		touch $(t).md;			\
		echo "# $(t)" >> $(t).md;	\
		echo "Programa: " >> $(t).md;	\
		echo "" >> $(t).md;		\
		echo "\`\`\`$(mk)" >> $(t).md;	\
		cat $(p) >> $(t).md;		\
		echo "\`\`\`" >> $(t).md;		\
		echo "" >> $(t).md; \
		echo "Salida: " >> $(t).md; \
		echo "\`\`\`" >> $(t).md; \
		$(BUILD) $(p) >> $(t).md; \
		echo "\`\`\`" >> $(t).md; \
	fi;


code:
	@if [ -f $(t).md ];				\
	then						\
		cat /dev/null > $(t).md;		\
		echo "# $(t)" >> $(t).md;	\
		echo "Programa: " >> $(t).md;	\
		echo "" >> $(t).md;		\
		echo "\`\`\`$(mk)" >> $(t).md;	\
		cat $(p) >> $(t).md;		\
		echo "\`\`\`" >> $(t).md;		\
	else						\
		touch $(t).md;			\
		echo "# $(t)" >> $(t).md;	\
		echo "Programa: " >> $(t).md;	\
		echo "" >> $(t).md;		\
		echo "\`\`\`$(mk)" >> $(t).md;	\
		cat $(p) >> $(t).md;		\
		echo "\`\`\`" >> $(t).md;		\
	fi;

del:
	rm -rf $(titulo)
