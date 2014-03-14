desc "prints all the names"
task :print_names do 
	File.open("names") do |f|
	f.each do |line|
		puts line
	end 
end
end

desc "creates a directory called class"
task :create_class_dir do 
	Dir.mkdir "class" unless Dir.exists? "class"
end

desc "create student dir in the class"

task :create_student_dirs do
	Dir.chdir("class")
	File.open("names") do |f|
		f.each do |line|
			Dir.mkdir line.chomp unless Dir.exists? line.chomp #chomp the new line char

		end
		Dir.chdir(..)
	end
end

desc "clean the directories"
task :remove_all_dirs => [:create_student_dirs] do
	Dir.rmdir("class") 
end
