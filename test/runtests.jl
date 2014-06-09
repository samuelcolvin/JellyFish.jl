using JellyFish
using Base.Test

jw = jaro_winkler("jellyfish", "smellyfish")
jw_correct = 0.8962962962962964
@test abs(jw_correct - jw) < 0.0001

jd = jaro_distance("jellyfish", "smellyfish")
jd_correct = 0.8962962962962964
@test abs(jd_correct - jd) < 0.0001

hd = hamming_distance("apple", "pear")
hd_correct = 5
@test abs(hd_correct - hd) < 0.0001

lev = levenshtein_distance("jellyfish", "smellyfish")
lev_correct = 2
@test abs(lev_correct - lev) < 0.0001

dlev = damerau_levenshtein_distance("jellyfish", "jellyfihs")
dlev_correct = 1
@test abs(dlev_correct - dlev) < 0.0001

sx = soundex("jellyfish")
sx_correct = "J412"
@test sx == sx_correct

met = metaphone("jellyfish")
met_correct = "JLFX"
@test met == met_correct

mat = match_rating_codex("jellyfish")
mat_correct = "JLLFSH"
@test mat == mat_correct

mra = match_rating_comparison("jellyfish", "jellyfihs")
mra_correct = true
@test mra == mra_correct

nys = nysiis("jellyfish")
nys_correct = "JALYF"
@test nys == nys_correct