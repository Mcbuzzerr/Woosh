module ApplicationHelper
    def text_class message
        if current_user == message.user
            "mytexts"
        else
            "othertexts"
        end
    end
    def login
    if current_user == nil 
    controller.redirect_to new_user_session_path 
    else 
    end 
    end

end