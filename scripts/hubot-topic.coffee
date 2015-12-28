path       = require 'path'
ChoiceData = require path.join __dirname, '../libs/topics-data'

module.exports = (robot) ->
    robot.respond /まとめ (.*)/i, (msg) ->
        # Spreadsheet = require('edit-google-spreadsheet');
        # Fs = require 'fs'
        # data = Fs.readFileSync process.env.SPREADSHEET_CONFIG_FILE, 'utf8'
        # config = JSON.parse(data)
        # Spreadsheet.load({
        #     spreadsheetName: 'レスポンス集',
        #     worksheetName:   msg.match[1],
        #     oauth2: {
        #         client_id:     config['SPREADSHEET_CLIENT_ID'],
        #         client_secret: config['SPREADSHEET_CLIENT_SECRET'],
        #         refresh_token: config['SPREADSHEET_REFRESH_TOKEN']
        #     },
        #     accessToken: {
        #         type:  'Bearer',
        #         token: config['SPREADSHEET_ACCESS_TOKEN']
        #     }
        # }, (err, spreadsheet) ->
        #     if (!err)
        #         spreadsheet.receive((err, rows, info) ->
        #             lists = []
        #             for key, value of rows
        #                 lists.push(value[1])
        #             msg.send lists.join("\n")
        #         )
        #     else msg.send 'NotFoundかな？'
        # );
