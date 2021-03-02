class Preparation
  private def argv main_object
    current_pathname = Pathname File.dirname __FILE__
    a1, a2 = ARGV

    # 输入文件
    abort '要编译哪那个文件？请告诉我' unless a1 # 检查参数存在
    target_in = Pathname a1
    unless File.exist? target_in # 不存在的话，看看加上 .ppz 后是否存在
      target_name = target_in.basename.to_s + '.ppz'
      target_in += '../' + target_name
      abort target_in[0..-5] + ' 不存在' unless File.exist? target_in # 还不存在的话，就说明是写错了
    end
    main_object.target_in = target_in
    main_object.is_folder = File.directory? target_in
    
    # 输出文件
    if target_out
      target_out = Pathname target_out
    else
      # 从输入文件获取文件名
      basename = target_in.basename.to_s
      basename = (/(.*).ppz$/.match basename) ? $1 : basename
      basename += '.pp'

      target_out = target_in + '../' + basename
    end
    # + 检查上级文件夹是否存在
    upper_dir = target_out + '..'
    abort (upper_dir.to_s) + ' 目录不存在' unless Dir.exist? upper_dir
    # + 检查文件夹：有则检查里面有没有文件；无则创建文件夹
    if Dir.exist? target_out
      abort target_out.to_s + ' 不是一个空文件夹' unless (Dir.children target_out).size == 0
    else
      Dir.mkdir target_out
    end
    main_object.target_out = target_out
  end
end