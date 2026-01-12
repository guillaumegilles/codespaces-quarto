#!/usr/bin/env bash
set -e

OUT=docs/commands
mkdir -p "$OUT"

gen_page () {
  CMD=$1
  FILE="$OUT/quarto-$CMD.qmd"

  cat > "$FILE" <<EOF
---
title: "quarto $CMD"
---

## NAME

quarto $CMD - $(quarto $CMD --help | head -n 1)

## SYNOPSIS

\`\`\`bash
quarto $CMD [OPTIONS]
\`\`\`

## DESCRIPTION

\`\`\`
$(quarto $CMD --help)
\`\`\`

## COMMANDS


## OPTIONS


## EXAMPLES


## SEE ALSO

EOF
}


# root command
cat > docs/commands/quarto.qmd <<EOF
---
title: "quarto"
---

## SYNOPSIS

\`\`\`bash
quarto [COMMAND] [OPTIONS]
\`\`\`

## DESCRIPTION

\`\`\`
$(quarto --help)
\`\`\`
EOF

for cmd in render preview serve create use add update remove convert \
  pandoc typst run list install uninstall tools publish check call \
  help;
  do gen_page "$cmd"
done
