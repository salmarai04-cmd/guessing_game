# Makefile

README.md: guessinggame.sh
	@echo "# Jeu de devinette de fichiers" > README.md
	@echo "" >> README.md
	@echo "Date et heure de génération : $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "Ce projet permet à l'utilisateur de deviner le nombre de fichiers dans le répertoire actuel à l'aide d'un script Bash." >> README.md
