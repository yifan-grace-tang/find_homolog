query="$1"
subject="$2"
output="$3"

blastn -query "$query" -subject "$subject" -outfmt "6 pident" | awk '$1 == 100' > "$output"

perfect_matches=$(wc -l < "$output")

echo "$perfect_matches"