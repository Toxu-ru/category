import { createWidget } from 'discourse/widgets/widget';
import RawHtml from 'discourse/widgets/raw-html';

var top_writers =  I18n.t("top_writers");
var best_theme =  I18n.t("best_theme");

export default createWidget('post-category', {
  buildKey: (attrs) => 'post-category',

  html(attrs, state) {
  let contents = []

  $.ajax({
  url: "/c/33.json",
  dataType: 'json',
  async: false,
  success: function(data) {
    
 var topics = data.topic_list.topics;
 var title;
 var slug;
 var excerpt;
 var image_url;
 
 for (var t = 0; t < topics.length; t++) {
 if(t >0) break;  
 title = topics[t].title;
 slug = topics[t].slug;
 excerpt = topics[t].excerpt;
 image_url = topics[t].image_url;
 
  contents.push( new RawHtml({ html: ` <div class="h-qa-bl"> 
    <img src="${image_url}" alt="${title}" class="logo-ava" width="100%"> <br>
    <a class="b-title" href="/t/${slug}">${title}</a><div>  ${excerpt}</div></div>`})); 
  }
  }
 });
 return contents;
}});
