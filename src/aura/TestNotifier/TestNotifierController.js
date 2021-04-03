({
    riseTestEvent: function (cmp, event) {
        alert(cmp);
        console.log(cmp);
        var compEvent = cmp.getEvent("testEvent");
        compEvent.setParams({
            "message": "Hello World"
        });
        compEvent.fire();

    }
})