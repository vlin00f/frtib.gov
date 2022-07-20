require 'zip'
require 'open-uri'

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
        if zipfile_path.start_with?('_archive')
          # dont recurse into _archive
        else
          recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
        end
      else
        put_into_archive(disk_file_path, zipfile, zipfile_path)
      end
    end
  end

  def recursively_deflate_directory(disk_file_path, zipfile, zipfile_path)
    # zipfile.mkdir zipfile_path
    subdir = Dir.entries(disk_file_path) - %w[. ..]
    write_entries subdir, zipfile_path, zipfile
  end

  def put_into_archive(disk_file_path, zipfile, zipfile_path)
    # puts disk_file_path + ' /// ' + zipfile_path + '  ///  ' + File.basename(zipfile_path)
    new_name = File.basename(zipfile_path)
    zipfile.add(new_name, disk_file_path)
  end
end

def fetch_PDF(pdf_url, pdf_name, pdf_dir)
  download = URI.open(pdf_url)
  IO.copy_stream(download, pdf_dir + '/' + pdf_name)
end

def make_zip_file(directory_to_zip, output_file)
  File.delete(output_file) if File.exist?(output_file)
  zf = ZipFileGenerator.new(directory_to_zip, output_file)
  zf.write()
end

forms_dir = "_pdf/onboarding/forms/forms/downloads"
info_dir = "_pdf/onboarding/forms/information/downloads"

fetch_PDF "https://www.uscis.gov/sites/default/files/document/forms/i-9-paper-version.pdf", "i-9-paper-version.pdf", forms_dir
fetch_PDF "https://www.opm.gov/forms/pdf_fill/sf1152.pdf", "sf1152.pdf", forms_dir

make_zip_file "_pdf/onboarding/forms/forms", "pdf/onboarding_forms.zip"
make_zip_file "_pdf/onboarding/forms/information", "pdf/onboarding_info.zip"
make_zip_file "_pdf/onboarding/orientation", "pdf/onboarding_orientation.zip"
