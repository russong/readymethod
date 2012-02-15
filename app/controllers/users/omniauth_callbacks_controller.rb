class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # @user = User.find_for_facebook_oauth(env["omniauth.auth"], current_user)
    #     
    #     omniauth = env["omniauth.auth"]
    #     session[:fb_token] = omniauth["credentials"]["token"] if omniauth['provider'] == 'facebook'
    #     
    #     if @user.persisted?
    #       flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
    #       sign_in_and_redirect @user, :event => :authentication
    #     else
    #       session["devise.facebook_data"] = env["omniauth.auth"]
    #       redirect_to new_user_registration_url
    #     end
    if !User.omniauth_providers.index(:facebook).nil?
      omniauth = env["omniauth.auth"]
      session[:fb_token] = omniauth["credentials"]["token"] if omniauth['provider'] == 'facebook'
      if current_user #or User.find_by_email(auth.recursive_find_by_key("email"))
        current_user.user_tokens.find_or_create_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
        #flash[:notice] = "Authentication successful"
        #redirect_to edit_user_registration_path
        redirect_to root_url
      else
        logger.info omniauth['provider']
        logger.info omniauth['uid']
        authentication = UserToken.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
        if authentication && 
          #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider']
          #sign_in_and_redirect(:user, authentication.user)
          #sign_in(authentication.user)
          #redirect_to root_url
          sign_in_and_redirect(authentication.user, :event => :authentication)
        else
          # create a new user
          
          unless omniauth.recursive_find_by_key("email").blank?
            user = User.find_or_initialize_by_email(:email => omniauth.recursive_find_by_key("email"))
          else
            user = User.new
          end

          user.apply_omniauth(omniauth)
          # user.confirm! #unless user.email.blank?
          
          if user.save
            #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider'] 
            sign_in_and_redirect(:user, user)
            #sign_in(user)
          else
            session[:omniauth] = omniauth.except('extra')
            redirect_to root_url
          #  redirect_to new_user_registration_url
          end
          #redirect_to root_ur
        end
      end
    end
  end
  
  def twitter
    @user = User.find_for_twitter_oauth(env["omniauth.auth"], current_user)

    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Twitter"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.twitter_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
  
  def passthru
    render :nothing => true, :status => 404, :layout => false
  end
  
  def method_missing(provider)
    if !User.omniauth_providers.index(provider.to_sym).nil?
      # omniauth = request.env["omniauth.auth"]
      omniauth = env["omniauth.auth"]
      session[:fb_token] = omniauth["credentials"]["token"] if omniauth['provider'] == 'facebook'
      if current_user #or User.find_by_email(auth.recursive_find_by_key("email"))
        current_user.user_tokens.find_or_create_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
        #flash[:notice] = "Authentication successful"
        #redirect_to edit_user_registration_path
        redirect_to root_url
      else
        authentication = UserToken.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
        if authentication
          #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider']
          #sign_in_and_redirect(:user, authentication.user)
          #sign_in(:user, authentication.user)
          
          sign_in_and_redirect(authentication.user, :event => :authentication)
        else
          # create a new user
          
          unless omniauth.recursive_find_by_key("email").blank?
            user = User.find_or_initialize_by_email(:email => omniauth.recursive_find_by_key("email"))
          else
            user = User.new
          end

          user.apply_omniauth(omniauth)
          # user.confirm! #unless user.email.blank?
          
          if user.save
            #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => omniauth['provider'] 
            sign_in_and_redirect(:user, user)
            #sign_in(:user, user)
          else
            session[:omniauth] = omniauth.except('extra')
            redirect_to root_url
          #  redirect_to new_user_registration_url
          end
        end
      end
    end
    
  end
end