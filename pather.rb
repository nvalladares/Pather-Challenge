#!/usr/bin/env ruby
# used argument vector
inputFile = ARGV[0] 
outputFile = ARGV [1]

	def pather(input, output)
		startPath = false
		hashIndex = nil
		File.open(output, 'w') do |f|
			File.read(input).each do |row|
				if row.index("#")
					if started == false
						started = true
						hashIndex = row.index("#")
					else
						started = false
						for point in hashIndex..row.index("#")-1 do 
							row[point] = "*"
						end
					end
				else
					row[hashIndex] = "*" if started == true
				end
				f << row
			end
		end
	end
