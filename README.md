[![Perl](https://img.shields.io/badge/perl-%2339457E.svg?style=for-the-badge&logo=perl&logoColor=white)](https://github.com/search?q=owner%3Anevmenandr+lang%3APerl+&type=repositories) 

# Replacement u with v in Latin

![latin](https://img.shields.io/badge/latin-language-blue)

## Pre-notice

The name of the Perl programming language is similar to the name of a pearl, although its name does not come from the name of a pearl. 20 years ago, I [studied](http://nevmenandr.net/personalia/thesis.pdf) the influence of the Baroque style on literature, and one of the versions of the origin of the name Baroque is also from the name of an irregularly shaped pearl (*perola barroca*). So I absolutely must have a [repository](https://github.com/nevmenandr/replace_u_with_v) of Perl code, plus it's the second programming language I've learned. For the task I would like to solve with code in this language, I chose to work with text in Latin. Latin language has a long history, and in different centuries it was written differently, in particular, in ancient times it did not have a lowercase letter v, and only the letter u was used everywhere. Modern readers are used to reading texts with v in non-syllabic position. This code replaces u with v in non-syllabic positions and makes the text presented according to ancient rules more familiar to the eye of a modern reader. The script works with both lowercase and uppercase letters.

## How to Use the Script

1. Create input file: Create a text file (e.g., `input.txt`) with the Latin text you want to process.

2. Run the [script](./uv.pl): Open your terminal or command prompt and navigate to the directory where you saved the script and input file. Run the script using the following command:

```bash
   perl uv.pl input.txt
```

The output file name will be constructed by appending `_v` to the base name before the extension. E.g. if your input file is named `input.txt`, then after running the script, you will get an output file named `input_v.txt`. The contents of this output file will reflect the changes made by replacing "u" with "v" as previously described.

## Rules

U changes to V in those cases where U is non-syllabic. This is the position before a vowel not after a consonant.

## Example

Here’s an example of an input file with various Latin phrases:

```
urbi et urbem sunt in utero.
Ueni, uidi, uici.
Ubi sunt qui ante nos fuerunt?
Quod erat demonstrandum.
Audire est credere.
Ubi est ueritas?
Sic transit gloria mundi.
Uxor et uir.
```

After running the script, output file will contain:

```
urbi et urbem sunt in utero.
Veni, vidi, vici.
Ubi sunt qui ante nos fuerunt?
Quod erat demonstrandum.
Audire est credere.
Ubi est veritas?
Sic transit gloria mundi.
Uxor et vir.
```

Repository [contains](./input.txt) a book by M. A. Lucan written with u taken from [here](https://www.thelatinlibrary.com/lucan/lucan2.shtml) and a [converted text](./input_v.txt) with a script.

## See also

[Vindolanda: a font that reproduces old Roman cursive](https://nevmenandr.github.io/vindolanda/)
