#!/bin/bash -e
sha=`git rev-parse --short HEAD`
results_file="RESULTS-$sha.md"
echo "# Results for \`$sha\`" > $results_file
echo "" >> $results_file
echo "Benchmarking Haskell..."
echo "## GHC Haskell with Spock" >> $results_file
echo "\`\`\`" >> $results_file
make benchmark-haskell >> $results_file
echo "\`\`\`" >> $results_file
echo "Benchmarking LDC..."
echo "## D with Vibe.d (LDC)" >> $results_file
echo "\`\`\`" >> $results_file
make benchmark-vibed-ldc >> $results_file
echo "\`\`\`" >> $results_file
echo "Benchmarking GDC..."
echo "## D with Vibe.d (GDC)" >> $results_file
echo "\`\`\`" >> $results_file
make benchmark-vibed-gdc >> $results_file
echo "\`\`\`" >> $results_file
echo "Benchmarking Go..."
echo "## Go with Gin" >> $results_file
echo "\`\`\`" >> $results_file
make benchmark-gin >> $results_file
echo "\`\`\`" >> $results_file
