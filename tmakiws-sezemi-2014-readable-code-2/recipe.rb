# -*- coding: utf-8 -*-

def show_all_id(filename)
	r_file = open(filename)
	r_file.each_with_index do |line, id|
		show = "#{id+1}:#{line}"
		print show
	end
	r_file.close
end
def show_selected_id(filename,selected_id)
	r_file = open(filename)
	line = r_file.readlines[selected_id-1]
	show = "#{selected_id}:#{line}"
	print show
	r_file.close
end

#print "ファイル名を入力してください。\n"
filename =ARGV[0]
#print "必要であれば、表示したいIDを入力してください。\n"
selected_id=ARGV[1].to_i
#print "ユーザー名を入力してください。\n"
user_name=ARGV[2]
print "ユーザー名:#{user_name}\n" 
if selected_id==0
	show_all_id(filename)
else
	show_selected_id(filename,selected_id)
end
