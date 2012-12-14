# config/initializers/pdfkit.rb
PDFKit.configure do |config|
     config.wkhtmltopdf = Rails.root.join('bin', 'wkhtmltopdf-amd64').to_s if Rails.env.production?  
 end
 
  config.default_options = {
      :ignore_load_errors => true
    }
end