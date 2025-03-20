use strict;
use warnings;
use utf8;
use open ':std', ':encoding(UTF-8)';

# Subroutine to replace 'u' with 'v' based on the specified rules
sub replace_u_with_v {
    my ($text) = @_;

    # Replace 'u' with 'v' unless it is at the end of a word or followed by a consonant and then a vowel
    $text =~ s/(?<![bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])u(?=[aeiou])(?=w)/v/g;
    $text =~ s/\bu(?=[aeiou])/v/g;


    # Handle uppercase 'U'
    $text =~ s/(?<![bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ])U(?=[aeiou])(?=w)/V/g;
    $text =~ s/\bU(?=[aeiou])/V/g;

    return $text;
}

# Main program
sub main {
    # Check for correct number of arguments
    if (@ARGV != 1) {
    die "Usage: perl uv.pl input.txt\n";
    }

my $input_file = $ARGV[0];
    
    # Create output filename
    my ($name, $ext) = $input_file =~ /^(.*?)(.[^.]+)?$/;
    my $output_file = "${name}_v$ext";

    # Read input file
    open my $in_fh, '<:encoding(UTF-8)', $input_file or die "Could not open '$input_file': $!";
    my @lines = <$in_fh>;
    close $in_fh;

    # Process each line and replace 'u' with 'v'
    foreach my $line (@lines) {
        $line = replace_u_with_v($line);
    }

    # Write output file
    open my $out_fh, '>:encoding(UTF-8)', $output_file or die "Could not open '$output_file': $!";
    print $out_fh @lines;
    close $out_fh;

    print "Processed file written to '$output_file'\n";
}

# Run the main program
main();
