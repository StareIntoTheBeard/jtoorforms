module ApplicationHelper

	def photo_display(thingy)
		if thingy.photo_front or thingy.photo_side or thingy.photo_back 
			@box = '<h3>Photographs</h3>'	
			@box += "Front:" + tag("br") + '<a href="' + thingy.photo_front.to_s + '" target="_blank">' + (image_tag thingy.photo_front, :height => "200px", :width =>"200px") + '</a>' + tag("br") unless thingy.photo_front_file_name == nil 
			@box += "Side:" + tag("br") + '<a href="' + thingy.photo_side.to_s + '" target="_blank">' + (image_tag thingy.photo_side, :height => "200px", :width =>"200px") + '</a>' + tag("br") unless thingy.photo_side_file_name == nil 
			@box += "Back:" + tag("br")  + '<a href="' + thingy.photo_back.to_s + '" target="_blank">' + (image_tag thingy.photo_back, :height => "200px", :width =>"200px") + '</a>' + tag("br") unless thingy.photo_back_file_name == nil 
			return @box.html_safe
		end
	end 

end
