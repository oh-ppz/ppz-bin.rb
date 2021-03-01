puts '输入文件夹: ' + TARGET_IN
puts '输出文件夹: ' + TARGET_OUT
puts

FileUtils.cp CSS_FILE_PATH, ((Pathname TARGET_OUT) + 'style.css').to_s
FileUtils.cp JS_FILE_PATH, ((Pathname TARGET_OUT) + 'index.js').to_s

model = PPZ::Folder::FolderModel.new TARGET_IN, 0
model.compile TARGET_OUT