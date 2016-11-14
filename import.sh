endpoint="$1"

for file in Genre Keyword Movie Person; do
  echo "Importing file $file.json"

  arangoimp --collection "$file" --type json --create-collection true --file "$file.json" --server.endpoint "$endpoint"
done

echo "Importing relations"
arangoimp --collection Relation --type json --create-collection true --create-collection-type edge --file "Relation.json" --server.endpoint "$endpoint"


