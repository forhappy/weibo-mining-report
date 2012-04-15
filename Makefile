all:weibo-mining.pdf
weibo-mining.pdf:weibo-mining.tex 
	pdflatex $^
	pdflatex $(shell pwd)/*.tex  $(shell pwd)/*.toc $(shell pwd)/*.aux 
	evince $@

.PHONY:clean
clean:
	rm *.log *.aux *.out *.toc *.nav *.snm *.vrb weibo-mining.pdf
