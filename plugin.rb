# name: category
# about: Category list
# version: 0.0.1
# authors: Evg

register_asset "stylesheets/portal.scss"

after_initialize do

  # add info category
  Site.preloaded_category_custom_fields << "categorization" if Site.respond_to? :preloaded_category_custom_fields 
  Site.preloaded_category_custom_fields << "categorqa" if Site.respond_to? :preloaded_category_custom_fields 
  Site.preloaded_category_custom_fields << "categorimg" if Site.respond_to? :preloaded_category_custom_fields 
  Site.preloaded_category_custom_fields << "categordiscr" if Site.respond_to? :preloaded_category_custom_fields 
  Site.preloaded_category_custom_fields << "categortxt" if Site.respond_to? :preloaded_category_custom_fields 
  
  
  add_to_serializer(:basic_category, :categorization, false) { object.custom_fields['categorization'] }
  add_to_serializer(:basic_category, :categorqa, false) { object.custom_fields['categorqa'] }
  add_to_serializer(:basic_category, :categorimg, false) { object.custom_fields['categorimg'] }
  add_to_serializer(:basic_category, :categordiscr, false) { object.custom_fields['categordiscr'] }
  add_to_serializer(:basic_category, :categortxt, false) { object.custom_fields['categortxt'] }
  
end
