var btn = instance_create_layer(100, 100, "GUI", obj_button);
btn.text = "Hello";
btn.callback = function () {
    print("hello");
};