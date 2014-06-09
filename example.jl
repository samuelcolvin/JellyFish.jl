
	using jellyfish

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
