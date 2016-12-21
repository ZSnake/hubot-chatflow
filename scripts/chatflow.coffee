module.exports = (robot) ->
    robot.respond /chatbot (.*)/i, (res) ->
        message = res.match[1];
        res.send message;
        robot.http('https://chatflow.kitt.ai/users/5852f7138f68240100637b50/apps/d975273d.5e5ef8/api/?token=atk5ZE4K3aoBSz0jKG&msg='+message)
        .get() (err, httpRes, body) ->
            if err  
                res.send 'Error sending request'
                return
            
            res.send 'Response: ' + body