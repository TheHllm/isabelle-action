FROM makarius/isabelle:Isabelle2023_X11_Latex

USER root

ENTRYPOINT ["/home/isabelle/Isabelle/bin/isabelle"]

