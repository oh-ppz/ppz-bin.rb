require 'fileutils'
require 'pathname'

class Preparation
  require_relative './argv'

  attr_reader :target_in, :target_out, :is_folder

  def initialize main_object
    argv main_object
    Dir.mkdir @dot_ppz = main_object.target_out + '.ppz'
    asset
  end

  private
    def asset
      asset_path = (Pathname __FILE__) + '../../../asset'
      FileUtils.cp_r asset_path, @dot_ppz
    end
end