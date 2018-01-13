SRC_FILE=raw_glossar.md
DEST_FILE=glossar.md

echo -e "# Glossar\n" > $DEST_FILE

(head -n 2 $SRC_FILE && tail -n +3 $SRC_FILE | sort --field-separator=\| --key=2) >> $DEST_FILE

