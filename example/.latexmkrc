# Change this if you, for whatever reason, don't use 'main.tex' as your default file.
@default_files = ('main.tex');

# Used to clean up collections.
@sr_table_files = map { /.*\.(.*\.table)/ ? $1 : die("table search regexp somehow failed") } glob "*.*.table";

$clean_ext = join(" ", @sr_table_files);