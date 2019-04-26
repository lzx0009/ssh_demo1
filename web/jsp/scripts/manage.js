
function save() {
    document.getElementById('saveForm').submit();
}

function callback() {
    history.go(-1);
}

function selectAction() {
    var data =$("#selec").val();
    document.location.href="equipment_findAll?equiClass="+data;
}

function borrow(sum,row,id) {

    if (checkData(sum,row)) {
        var flag = confirm("确认申请"+row+"件吗?");
        if (flag){
            //data:申请数量，sum：当前总数
            var data = document.getElementById("listEquip").getElementsByTagName("tr")[row].getElementsByTagName("td")[0].innerHTML;
            var para = sum-data;
            document.getElementById("listEquip").getElementsByTagName("tr")[row].getElementsByTagName("td")[3].innerHTML=para;        // alert(sum-data);
            $.ajax({
                url : 'equipment_borrow',
                dataType : 'JSON' ,
                data : {"equiNum":para,"id":id},
                type : "POST",
                success : function(e){
                    if(e.tag){
                        alert("申请"+e.msg);
                        // window.location.href='${basePath}/index';
                    }else{
                        alert("申请"+e.msg);
                    }
                },
                error : function(){
                    alert("申请失败！！");
                }
            });
        }

    }
}

function checkData(sum,row) {
    var reg = new RegExp("^[0-9]*$");

    if (sum>row && reg.test(row)){
        return true;
    }else {

        alert("输入正确数量");
        return false;
    }
}
function borrowequip(para) {

    alert(para);
    var number = $("num").val();
    alert(number);

}

