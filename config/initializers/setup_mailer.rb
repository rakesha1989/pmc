ActionMailer::Base.smtp_settings = { 
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => "plain",
   :enable_starttls_auto => true,
   :user_name => "rakesh.qubik@gmail.com",
   :password => "civilice",
   :openssl_verify_mode  => 'none'
}