require 'yaml'

member = YAML.load_file('./member.yml')

while !member.empty? do
	gets
	puts member.shuffle!.shift
	open('./member.yml', 'w') do |f|
		YAML.dump(member, f)
	end
end
