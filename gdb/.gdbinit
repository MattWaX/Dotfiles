tui new-layout full {-horizontal src 1 asm 1} 2 {-horizontal cmd 1 regs 1} 1
tui new-layout source {-horizontal src 1} 2 {-horizontal cmd 1 regs 1} 1

alias cmd = focus cmd
alias src = focus src
alias asm = focus asm
alias regs = focus regs

lay full
