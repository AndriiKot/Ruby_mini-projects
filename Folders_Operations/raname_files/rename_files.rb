require 'fileutils'

target_dir = './'
destination_dir = 'test'

if !Dir.exist?(destination_dir)
  FileUtils.mkdir(destination_dir)
end

Dir.glob("#{target_dir}/**/*").each do |file|
  next if File.directory?(file)

  file_name = File.basename(file)
  folder_name = File.basename(File.dirname(file))

  new_file_name = "#{destination_dir}/#{folder_name}_#{file_name}"

  FileUtils.cp(file, new_file_name)
end