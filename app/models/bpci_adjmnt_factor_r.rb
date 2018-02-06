class BpciAdjmntFactorR < ApplicationRecord
require 'csv'

	def self.import(document)
	    CSV.new(
	    	document.file_contents,
	    	headers: true,
	    	col_sep: "\t",
	    	force_quotes: false
	    ).each do |row|
	      BpciAdjmntFactorR.create! row.to_hash
	    end  
  	end

end
