# # -- horizontal layout ----------------------------------------------------------------------------------------------------

# source /home/kali/Documents/tools/pwndbg/gdbinit.py
# source /home/kali/Documents/tools/splitmind/gdbinit.py

# python
# import splitmind

# sections = "regs"

# # mode = input("source/disasm/mixed/normal mode:?(s/d/m/n | default=d)") or "d"
# mode = "d"

# if mode != "n":
#     # using_pwntools = input("using pwntools?(y/n | default=n)") or "n"
#     using_pwntools = "y"

#     spliter = splitmind.Mind()
#     spliter.tell_splitter(show_titles=True)
#     spliter.tell_splitter(set_title="pwndbg")

#     spliter.select("main").right(display="rightpanel", size="55%")
#     spliter.select("main").above(display="regs", size="40%", banner="none")

#     if using_pwntools == "y":
#         spliter.select("rightpanel").below(display="pwntools", size="15%")

#     if mode == "d":
#         sections += " disasm"
#         spliter.show("disasm", on="rightpanel")
#         gdb.execute("set context-code-lines 20")

#     elif mode == "s":
#         sections += " code"
#         spliter.show("code", on="rightpanel")
#         gdb.execute("set context-source-code-lines 8")

#     else:
#         sections += " disasm code"
#         spliter.show("disasm", on="rightpanel")
#         spliter.show("code", on="rightpanel")
#         gdb.execute("set context-code-lines 8")
#         gdb.execute("set context-source-code-lines 10")

#     gdb.execute("set context-stack-lines 10")
#     spliter.show("legend", on="regs")
#     spliter.show("expressions", on="regs")
#     spliter.show("stack", on="rightpanel")
#     # spliter.show("backtrace", on="regs")
#     # spliter.show("args", on="regs")

#     sections += " stack expressions"
#     gdb.execute(f"set context-sections {sections}")
#     gdb.execute("set show-retaddr-reg on")

#     spliter.build()
#     # spliter.build(nobanner=True)

#     if using_pwntools == "y":
#         import os
#         os.system('tmux swap-pane -s0 -t4')
#         os.system('tmux kill-pane -t0')
# end

# -- vertical layout ----------------------------------------------------------------------------------------------------

source /home/kali/Documents/tools/pwndbg/gdbinit.py
source /home/kali/Documents/tools/splitmind/gdbinit.py

python
import splitmind

sections = "regs"

# mode = input("source/disasm/mixed/normal mode:?(s/d/m/n | default=d)") or "d"
mode = "d"

if mode != "n":
    # using_pwntools = input("using pwntools?(y/n | default=n)") or "n"
    using_pwntools = "y"

    spliter = splitmind.Mind()
    spliter.tell_splitter(show_titles=True)
    spliter.tell_splitter(set_title="pwndbg")

    spliter.select("main").above(display="regs", size="70%", banner="none")
    spliter.select("regs").below(display="belowregs", size="50%", banner="none")

    if using_pwntools == "y":
        spliter.select("main").below(display="pwntools", size="30%")

    if mode == "d":
        sections += " disasm"
        spliter.show("disasm", on="belowregs")
        gdb.execute("set context-code-lines 16")

    elif mode == "s":
        sections += " code"
        spliter.show("code", on="belowregs")
        gdb.execute("set context-source-code-lines 8")

    else:
        sections += " disasm code"
        spliter.show("disasm", on="belowregs")
        spliter.show("code", on="belowregs")
        gdb.execute("set context-code-lines 8")
        gdb.execute("set context-source-code-lines 10")

    gdb.execute("set context-stack-lines 8")
    spliter.show("legend", on="regs")
    spliter.show("expressions", on="regs")
    spliter.show("stack", on="regs")
    # spliter.show("backtrace", on="regs")
    # spliter.show("args", on="regs")

    sections += " stack expressions"
    gdb.execute(f"set context-sections {sections}")
    gdb.execute("set show-retaddr-reg on")

    spliter.build()
    # spliter.build(nobanner=True)

    if using_pwntools == "y":
        import os
        os.system('tmux swap-pane -s0 -t4')
        os.system('tmux kill-pane -t0')
end

# -- old layout ----------------------------------------------------------------------------------------------------

# python
# import splitmind

# sections = "regs"

# mode = input("source/disasm/mixed/normal mode:?(s/d/m/n | default=d)") or "d"
# using_pwntools = input("using pwntools?(y/n | default=n)") or "n"

# spliter = splitmind.Mind()

# spliter.tell_splitter(show_titles=True)
# spliter.tell_splitter(set_title="pwndbg")

# spliter.select("main").right(display="backtrace", size="20%")
# spliter.select("backtrace").below(display="bash", cmd="/bin/bash", size="30%")
# spliter.select("main").above(display="discode", size="60%")
# spliter.select("discode").right(display="regs", size="55%", banner="none")
# if using_pwntools == "y":
#     spliter.select("regs").below(display="pwntools", size="50%")

# if mode == "d":
#     sections += " disasm"
#     spliter.show("disasm", on="discode", banner="none")
#     gdb.execute("set context-code-lines 20")

# elif mode == "s":
#     sections += " code"
#     spliter.show("code", on="discode", banner="none")
#     gdb.execute("set context-source-code-lines 20")

# else:
#     sections += " disasm code"
#     spliter.select("discode").below(display="disasm", size="40%")
#     spliter.show("code", on="discode")
#     gdb.execute("set context-code-lines 8")
#     gdb.execute("set context-source-code-lines 20")

# gdb.execute("set context-stack-lines 5")

# spliter.show("stack", on="regs", banner="none")
# spliter.show("legend", on="discode")
# spliter.show("args", on="backtrace")
# spliter.show("expressions", on="backtrace")

# sections += " args stack backtrace expressions"
# gdb.execute("set context-sections \"%s\"" % sections)
# gdb.execute("set show-retaddr-reg on")

# spliter.build()
# # spliter.build(nobanner=True)

# if using_pwntools == "y":
#     import os
#     os.system('tmux swap-pane -s0 -t3')
#     os.system('tmux kill-pane -t0')
# end
