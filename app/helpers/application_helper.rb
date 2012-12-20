module ApplicationHelper

	def photo_display(thingy)
		if thingy.photo_front or thingy.photo_side or thingy.photo_back 
			@box = '<h2>Photo Attachments</h2>'	
			@box += (image_tag thingy.photo_front, :height => "200px", :width =>"200px") + tag("br") unless thingy.photo_front_file_name == nil 
			@box += (image_tag thingy.photo_side, :height => "200px", :width =>"200px") + tag("br") unless thingy.photo_side_file_name == nil 
			@box += (image_tag thingy.photo_back, :height => "200px", :width =>"200px") + tag("br") unless thingy.photo_back_file_name == nil 
			return @box.html_safe
		end
	end 

end
