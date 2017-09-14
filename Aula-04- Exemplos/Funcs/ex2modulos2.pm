# NumFuncs.pm

#package NumFuncs;

#use Funcs::NumFuncs qw/media_idade/;
#use warnings;

sub media_idade($) {
return eval (join('+',@{$_[0]})) / eval(@{$_[0]});
}
1;

