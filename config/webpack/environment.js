const { environment } = require('@rails/webpacker')

const webpack=require('webpack')
    environment.plugins.prepend('Provide',
        newwebpack.ProvidePlugin({
        $:'jquery/src/jquery',
        jQuery:'jquery/src/jquery'
    })
)

module.exports = environment
