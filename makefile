compile:
	mkdir -p ./build/
	@make run-latex
	@make run-latex

run-latex:
	pdflatex -output-directory=build -jobname=rulebook ./rulebook/main.tex

clean:
	rm -rf ./build/

wc:
	@pandoc ./rulebook/main.tex -t plain | wc -w
