\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{shadowrun}%[Shadowrun-style two-column book class]

% This is a special option we use for when we build overleaf-extractable builds
% The install script will alter it for the overleaf specific folders
\newcommand\@inputprefix[1]{#1}
\newcommand\@imageLocation[1]{\@inputprefix{images/#1}}

\input{\@inputprefix{options.tex}}

\ExecuteOptions{purple,logo-6e,font-6e-freealt,openright} % set defaults

\ProcessOptions\relax
\LoadClass[twocolumn]{book}

\input{\@inputprefix{packages.tex}}
\input{\@inputprefix{definitions/_main.tex}}
\input{\@inputprefix{commands.tex}}
\input{\@inputprefix{configuration.tex}}
\input{\@inputprefix{background/_main.tex}}
