({
    handleComponentEvent: function (cmp, event) {
        alert('Captured');
        var message = event.getParam("message");
        console.log('message:' + message);
        // set the handler attributes based on event data
        cmp.set("v.messageFromEvent", message);
        var numEventsHandled = parseInt(cmp.get("v.numEvents")) + 1;
        cmp.set("v.numEvents", numEventsHandled);
    }
})