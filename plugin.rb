# name: category
# about: Category list
# version: 0.0.1
# authors: Evg

register_asset "stylesheets/portal.scss"

after_initialize do

  # add info category
  add_to_serializer(:basic_category, :categorization, false) { object.custom_fields['categorization'] }
  add_to_serializer(:basic_category, :categorqa, false) { object.custom_fields['categorqa'] }
  add_to_serializer(:basic_category, :categorimg, false) { object.custom_fields['categorimg'] }
  add_to_serializer(:basic_category, :categordiscr, false) { object.custom_fields['categordiscr'] }
  add_to_serializer(:basic_category, :categortxt, false) { object.custom_fields['categortxt'] }
  
end
