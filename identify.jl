
include("/home/brad/repo/julia/dedup_pics/src/DedupPics.jl")

print("Enter directory: ")
DIR = readline()
DedupPics.identify_duplicates(DIR)
