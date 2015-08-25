mainWindow = null
app = require('app')
BrowserWindow = require('browser-window')

app.on('ready', ->
  createMainWindow = ->
    mainWindow = new BrowserWindow({ width: 350, height: 640 })
    mainWindow.loadUrl('file://' + __dirname + '/views/index.html')
    mainWindow.on('closed', ->
      mainWindow = null
      app.quit()
    )

  createMainWindow()
)

app.on('window-all-closed', ->
  # nothing
)
