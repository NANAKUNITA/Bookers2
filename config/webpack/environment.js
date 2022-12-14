const webpack=require('webpack')
environment.plugins.prepen(
  'Provide',
  new webpack.ProvidePlugin({
    $:'jquery/src/jquery',
    jQuery:'jquery/src/jquery',
    Popper:'popper.js'
    })
  )
