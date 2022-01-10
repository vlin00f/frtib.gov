Jekyll::Hooks.register :site, :post_read do |site|
    puts 'Adding sort key to meeting minute files'

    site.collections.each do |collection|
      if collection[0] == 'meeting_minutes'
        puts collection[0]
        collection.each do |item|
          if item.respond_to?("each")
            item.files.each do |mmfile|
              if mmfile.data['sortKey']
                @sortKey = mmfile.basename
                # puts mmfile.inspect
                @sortKey = @sortKey.gsub 'Dec', '-12-'
                @sortKey = @sortKey.gsub 'Nov', '-11-'
                @sortKey = @sortKey.gsub 'Oct', '-10-'
                @sortKey = @sortKey.gsub 'Sep', '-09-'
                @sortKey = @sortKey.gsub 'Sept', '-09-'
                @sortKey = @sortKey.gsub 'Aug', '-08-'
                @sortKey = @sortKey.gsub 'Jul', '-07-'
                @sortKey = @sortKey.gsub 'Jun', '-06-'
                @sortKey = @sortKey.gsub 'May', '-05-'
                @sortKey = @sortKey.gsub 'Apr', '-04-'
                @sortKey = @sortKey.gsub 'Mar', '-03-'
                @sortKey = @sortKey.gsub 'Feb', '-02-'
                @sortKey = @sortKey.gsub 'Jan', '-01-'
                mmfile.data['sortKey'] = @sortKey
              end
            end
          end
        end
      end
    end
end
