module Bearror

	def trim(error_code)
		error_code.map {|e| e.to_s.split("/")[-1]}
	end


	alias classic_raise raise

	def raise(*a)
		begin
			classic_raise(*a)
		rescue Exception => e
      		puts "#{e.class}: #{e.message}"
      		puts trim(e.backtrace) unless e.backtrace.nil?
			exit!
		end	
	end

end

module Kernal
	include Bearror
end


	