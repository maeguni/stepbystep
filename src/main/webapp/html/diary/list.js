'use strict'

var trTemplateSrc = $('#listsection').html();
var trTemplateFn = Handlebars.compile(trTemplateSrc);

function loadList() {
    $.getJSON(`${serverApiAddr}/json/diary/list`,
            (result)=> {console.log("로딩 성공!")})
            .done(function(result) {   
                console.log(result.list);
       var trListHTML = trTemplateFn({list:result.list});
        $('#tbody').html(trListHTML);
 })
}
loadList();