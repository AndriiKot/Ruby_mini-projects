lessons = ARGV[0].to_i
repeats = lessons == 0  ? 2 : lessons
max_value_size = 25.to_s.size


repeats.times do |i|
    lesson_start = i + 1
    folder = "_#{'0' * (max_value_size - (lesson_start).to_s.size)}#{lesson_start}__Lesson__"
    git_repo =  "https://github.com/AndriiKot/Lesson_#{lesson_start}__Course_25__A0-A1__.git"
    system(`git subtree pull --prefix #{folder} #{git_repo} main`)
end

system(`git push`)
