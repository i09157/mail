class MailInput < SimpleForm::Inputs::StringInput
  def input
    input_html_options[:type] = "string"
    input_html_options[:"data-provide"] = "typeahead"
    input_html_options[:"data-source"] = Account.pluck(:mail_addr).compact.uniq.to_s
    input_html_options[:autocomplete] = "off"
    super
  end
end