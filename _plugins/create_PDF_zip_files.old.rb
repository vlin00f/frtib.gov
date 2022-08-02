require 'zip'

# from https://github.com/rubyzip/rubyzip
#
# This is the example modified to zip the onboarding subfolders
#
#
# Usage:
#   directory_to_zip = "/tmp/input"
#   output_file = "/tmp/out.zip"
#   zf = ZipFileGenerator.new(directory_to_zip, output_file)
#   zf.write()

class ZipFileGenerator
  # Initialize with the directory to zip and the location of the output archive.
  def initialize(input_dir, output_file)
    @input_dir = input_dir
    @output_file = output_file
  end

  # Zip the input directory.
  def write
    entries = Dir.entries(@input_dir) - %w[. ..]

    ::Zip::File.open(@output_file, ::Zip::File::CREATE) do |zipfile|
      write_entries entries, '', zipfile
    end
  end

  private

  # A helper method to make the recursion work.
  def write_entries(entries, path, zipfile)
    entries.each do |e|
      zipfile_path = path == '' ? e : File.join(path, e)
      disk_file_path = File.join(@input_dir, zipfile_path)

      if File.directory? disk_file_path
        # dont recurse to avoid archive and other sub directorys.  Instead could check value for _archive and ignore just those
        # recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
      else
        put_into_archive(disk_file_path, zipfile, zipfile_path)
      end
    end
  end

  def recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
    zipfile.mkdir zipfile_path
    subdir = Dir.entries(disk_file_path) - %w[. ..]
    write_entries subdir, zipfile_path, zipfile
  end

  def put_into_archive(disk_file_path, zipfile, zipfile_path)
    zipfile.add(zipfile_path, disk_file_path)
  end
end

def make_zip_file(directory_to_zip, output_file)
  File.delete(output_file) if File.exist?(output_file)
  zf = ZipFileGenerator.new(directory_to_zip, output_file)
  zf.write()
end

make_zip_file "_pdf/onboarding/forms/forms", "pdf/onboarding_forms.zip"
make_zip_file "_pdf/onboarding/forms/information", "pdf/onboarding_info.zip"
make_zip_file "_pdf/onboarding/orientation", "pdf/onboarding_orientation.zip"
