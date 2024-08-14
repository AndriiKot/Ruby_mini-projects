﻿
pull = "git subtree pull --prefix "

PROJECTS.each do |folder, git_repo| 
   system(`#{pull}#{folder} #{git_repo} main`)
end

system(`git push`)