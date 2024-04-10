
path = ARGV[0]
path = path ? File.join(Dir.pwd, path) : Dir.pwd

File.open(File.join(path, 'DESCRIPTION.txt'), 'w') do |f|
end
File.open(File.join(path, 'solution.js'), 'w') do |f|
end
File.open(File.join(path, 'solution_best_pr.js'), 'w') do |f|
end