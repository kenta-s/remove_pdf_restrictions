require "remove_pdf_restrictions/version"
require 'fileutils'
require "securerandom"

module RemovePdfRestrictions

  def self.execute!(file_name)
    tmp_file = SecureRandom.uuid
    File.rename(file_name, tmp_file)
    begin
      `gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=#{file_name} -c .setpdfwrite -f #{tmp_file}`
      FileUtils.rm(tmp_file)
    rescue => e
      File.rename(tmp_file, file_name)
      raise e
    end
  end
end
