# JellyFish

[![Build Status](https://travis-ci.org/samuelcolvin/JellyFish.jl.svg?branch=master)](https://travis-ci.org/samuelcolvin/JellyFish.jl)

Port of the [jellyfish string comparison library](https://github.com/sunlightlabs/jellyfish).

All underlying functions in jellyfish are written in c, this packages just calls those functions directly.

jellyfish.jl is subject to the BSD-3 license as per the original jellyfish module.

### Included Algorithms

String comparison:

* Levenshtein Distance
* Damerau-Levenshtein Distance
* Jaro Distance
* Jaro-Winkler Distance
* Match Rating Approach Comparison
* Hamming Distance

### Phonetic encoding:

* American Soundex
* Metaphone
* NYSIIS (New York State Identification and Intelligence System)
* Match Rating Codex

## Basic usage:

	using JellyFish

	@show jaro_winkler("jellyfish", "smellyfish")
	@show jaro_distance("jellyfish", "smellyfish")
	@show hamming_distance("apple", "pear")
	@show levenshtein_distance("jellyfish", "smellyfish")
	@show damerau_levenshtein_distance("jellyfish", "jellyfihs")
	@show soundex("jellyfish")
	@show metaphone("jellyfish")
	@show match_rating_codex("jellyfish")
	@show match_rating_comparison("jellyfish", "jellyfihs")
	@show nysiis("jellyfish")

gives:

	jaro_winkler("jellyfish","smellyfish") => 0.8962962962962964
	jaro_distance("jellyfish","smellyfish") => 0.8962962962962964
	hamming_distance("apple","pear") => 5
	levenshtein_distance("jellyfish","smellyfish") => 2
	damerau_levenshtein_distance("jellyfish","jellyfihs") => 1
	soundex("jellyfish") => "J412"
	metaphone("jellyfish") => "JLFX"
	match_rating_codex("jellyfish") => "JLLFSH"
	match_rating_comparison("jellyfish","jellyfihs") => true
	nysiis("jellyfish") => "JALYF"