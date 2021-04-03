({
    riseTestEvent: function (component, event, helper) {

        var compEvent = compEvent.getEvent("testEvent");
        compEvent.setParams({
            "message": "Hello World"
        });
        compEvent.fire();

    }
})