define hookpost-run
  refresh
end
define hookpost-continue
  refresh
end
define hookpost-next
  refresh
end
define hookpost-step
  refresh
end

set confirm on
set verbose off

set extended-prompt \[\e[0;34m\]gdb (\f)\[\e[0m\]> 

tui new-layout full {-horizontal src 1 asm 1} 2 {-horizontal cmd 3 regs 2} 1
tui new-layout source {-horizontal src 1} 2 {-horizontal cmd 3 regs 2} 1

alias cmd = focus cmd
alias src = focus src
alias asm = focus asm
alias regs = focus regs

lay source

set tui border-kind acs 
