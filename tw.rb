File.open('t').readlines.each { |line|
	name = line.match(/\/status\/(\d+)./).captures[0] + '.mp4'
	puts `yt \"#{line.strip}\" -o #{name}`
}