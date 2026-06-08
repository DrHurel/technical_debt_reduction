# Génération automatique du glossaire (package glossaries)
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
sub run_makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd $path if $path;
    system("makeglossaries", $base_name);
    popd if $path;
}
push @generated_exts, 'glo', 'gls', 'glg', 'acn', 'acr', 'alg';
$clean_ext .= ' glo gls glg acn acr alg ist';
