cd $HOME/.vscode/extensions
ts_dir=$(       exa | rg "ms-vscode.vscode-typescript-next"     )
rust_dir=$(     exa | rg "rust-lang.rust-analyzer"              )
py_dir=$(       exa | rg "ms-python.python"                     )    
astro_dir=$(    exa | rg "astro-build.astro-vscode"             )
sveltedir=$(    exa | rg "svelte.svelte-vscode"                 )
yaml_dir=$(     exa | rg "redhat.vscode-yaml"                   )
mdoc_dir=$(     exa | rg "stripe.markdoc-language-support"      )
stylus_dir=$(   exa | rg "sysoev.language-stylus"               )
cpp_dir=$(      exa | rg "ms-vscode.cpptools"                   )
mojo_dir=$(     exa | rg "modular-mojotools.vscode-mojo"        )
r_dir=$(        exa | rg "REditorSupport.r"                     )
bash_dir=$(     exa | rg "mads-hartmann.bash-ide-vscode"        )   
lua_dir=$(      exa | rg "sumneko.lua"                          )
psql_dir=$(     exa | rg "uniquevision.vscode-plpgsql-lsp"      )
wolf_dir=$(     exa | rg "lsp-wl.lsp-wl-client"                 )
cmake_dir=$(    exa | rg "josetr.cmake-language-support-vscode" )
zig_dir=$(      exa | rg "ziglang.vscode-zig"                   )
git_dir=$(      exa | rg "yy0931.gitconfig-lsp"                 )

all_dirs=("$ts_dir" "$rust_dir" "$py_dir" "$astro_dir" "$sveltedir" "$yaml_dir" "$mdoc_dir" "$stylus_dir" "$cpp_dir" "$mojo_dir" "$r_dir" "$bash_dir" "$lua_dir" "$psql_dir" "$wolf_dir" "$cmake_dir" "$zig_dir" "$git_dir")


tmLanguage_files=(**/*.tmLanguage.json)


for file in "${tmLanguage_files[@]}"; do
    echo "$file"
    echo ""
done