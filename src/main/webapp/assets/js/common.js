
var tableLang_zh_CN = {
    "decimal": "",
    "emptyTable": "无记录",
    "loadingRecords": "正在加载...",
    "processing": "正在处理...",
    "zeroRecords": "未找到记录"
};

function array_remove(arr, item)
{
    for(var i = arr.length; i--;) {
        if(arr[i] === item) {
            arr.splice(i, 1);
        }
    }

    return arr;
}
