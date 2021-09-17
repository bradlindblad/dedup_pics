module DedupPics


export identify_duplicates
export delete_duplicates

function is_dupl(pic)
	contains(pic, r"\(.+?\)")
end

function identify_duplicates(dir)

	files = readdir(dir)

	for i in files
		case = is_dupl(i)
		if case
			println("$i is duplicate.")
		end
	end

end

function delete_duplicates(dir)

	files = readdir(dir, join = true)

	for i in files
		case = is_dupl(i)
		if case
			rm(i)
			println("$i was deleted.")
		end
	end
end

end
