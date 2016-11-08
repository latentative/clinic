ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  class_attr_index = html_tag.index 'class="'
  error_class = 'is-invalid-'+(html_tag =~ /<(label)/ ? 'label' : 'input')

  if class_attr_index
    html_tag.insert class_attr_index+7, error_class
  else
    html_tag.insert html_tag.index('>'), " class='#{error_class}'"
  end
end