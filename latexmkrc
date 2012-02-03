push @cus_dep_list, "acn acr 0 acn2acr"; # glossaries and acronym hack
sub acn2acr { system("makeglossaries $_[0]"); }
$pdf_previewer = "start evince";
