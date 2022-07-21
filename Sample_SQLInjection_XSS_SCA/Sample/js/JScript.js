function HideCtrl(ctrl, timer) {
    var ctry_array = ctrl.split(",");
    var num = 0, arr_length = ctry_array.length, obj = null;
    
    while (num < arr_length) {
        obj = document.getElementById(ctry_array[num]);
        if (obj) {
            obj.style.display = "block";
            setTimeout('document.getElementById("' + ctry_array[num] + '").style.display = "none";', timer);
        }
        num += 1;
    }
    return false;
}