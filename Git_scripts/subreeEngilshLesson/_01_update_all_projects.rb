lessons = 25
max_value_size = lessons.to_s.size

repositories = [
    'https://github.com/AndriiKot/Lesson_1__Course_25__A0-A1__.git',
]

update = "git subtree pull --prefix "


repositories.each_with_index do |element, index|
    folder = "_#{'0' * (max_value_size - (index + 1).to_s.size)}#{index + 1}__Lesson__"
    git_repo = element;
        system(`#{update}#{folder} #{git_repo} main`)
end

system(`git push`)
