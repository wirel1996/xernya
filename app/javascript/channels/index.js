// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

jQuery(function($) {
    $(".deleteAction").click( function() {
        const curret_item = $(this).parents('tr')[0]
        if(confirm("Вы уверены?")) {
            $.ajax( url: {
                url: '/items/' + $(curret_item).attr('data-item_id'),
                type: 'POST',
                data: {_method: 'DELETE'},
                success: function() {
                     curret_item.fadeOut("slow")
                }

            })
        }
    })
})
