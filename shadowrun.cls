\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shadowrun}%[Shadowrun-style two-column book class]

\input{options.tex}

\ExecuteOptions{purple,logo-6e,font-6e-freealt,openright} % set defaults

\ProcessOptions\relax
\LoadClass[twocolumn]{book}

\input{packages.tex}
\input{definitions/main.tex}
\input{commands.tex}
\input{configuration.tex}
\input{background/main.tex}