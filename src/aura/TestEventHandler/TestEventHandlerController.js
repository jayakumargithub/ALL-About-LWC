({
    handleEvent: function (component, event, helper) {

        var message = event.getParam("message");
        component.set("MessageFromEvemt", message);
    }
})