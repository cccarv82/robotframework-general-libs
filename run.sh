# Limpeza de reports antigos
rm -rf reports/*

# Code Format e Code Review
robotidy \
        -c AlignSettingsSection:up_to_column=3:min_width=50 \
        -c AlignTestCasesSection:enabled=True:widths=14,24 --line-length 80 \
        -c AlignKeywordsSection:widths=10,10,24,30 --line-length 100 \
        -c AlignVariablesSection:min_width=20 \
        -c IndentNestedKeywords:enabled=True \
        -c OrderTags:enabled=True \
        conta.robot

touch reports/robocop.txt
robocop \
        --report all \
        --output reports/robocop.txt \
        conta.robot

# Execução em paralelo
pabot \
    --processes 5 \
    -x xunit.xml \
    -d ./reports \
    conta.robot

# Geração do Dashboard a partir dos reports gerados
robotmetrics  \
            -t True \
            --inputpath ./reports \
            --output output.xml

# Fix para local de disponibilização do Dashboard
cp metrics-* ./reports

# Limpeza residual
rm -rf metrics-*
rm -rf reports/pabot_results/
rm -rf .pabotsuitenames
