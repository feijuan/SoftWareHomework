
$(function(){
    // 字符验证
    jQuery.validator.addMethod("stringCheck", function(value, element) {
        return this.optional(element) || /^[\u0391-\uFFE5\w]+$/.test(value);
    }, "只能包括中文字、英文字母、数字和下划线");
    // 中文字两个字节
    jQuery.validator.addMethod("byteRangeLength", function(value, element, param) {
        var length = value.length;
        for(var i = 0; i < value.length; i++){
            if(value.charCodeAt(i) > 127){
                length++;
            }
        }
        return this.optional(element) || ( length >= param[0] && length <= param[1] );
    }, "请确保输入的值在3-15个字节之间(一个中文字算2个字节)");

// 身份证号码验证
    jQuery.validator.addMethod("isIdCardNo", function(value, element) {
        return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
    }, "请正确输入您的身份证号码");
//护照编号验证
    jQuery.validator.addMethod("passport", function(value, element) {
        return this.optional(element) || checknumber(value);
    }, "请正确输入您的护照编号");

// 手机号码验证
    jQuery.validator.addMethod("isMobile", function(value, element) {
        var length = value.length;
        var mobile = /^1\d{10}$/
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请正确填写您的手机号码");

    // 密码规则验证，最短5位，字母数字交错
    jQuery.validator.addMethod("passwordCheck", function(value, element) {
        var length = value.length;
        var reg1 = new RegExp("[a-zA-Z]");
        var flag1= reg1.test(value);
        var reg2 = new RegExp("[0-9]");
        var flag2= reg2.test(value);
        return this.optional(element) || (length >= 6 && flag1 && flag2);
    }, "最短6位，字母数字交错");

// 电话号码验证
    jQuery.validator.addMethod("isTel", function(value, element) {
        var tel = /^\d{3,4}-?\d{7,9}$/; //电话号码格式010-12345678
        return this.optional(element) || (tel.test(value));
    }, "请正确填写您的电话号码");

// 联系电话(手机/电话皆可)验证
    jQuery.validator.addMethod("isPhone", function(value,element) {
        var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/;
        var tel = /^\d{3,4}-?\d{7,9}$/;
        var telAreaCode = /^\d{7,9}$/; //无区号-固话
        return this.optional(element) || (tel.test(value) || mobile.test(value)) || telAreaCode.test(value);

    }, "请正确填写您的联系电话");

    // 联系电话(手机)验证
    jQuery.validator.addMethod("isMobile", function(value,element) {
        var mobile = /^1[34578]\d{9}$/;
        return this.optional(element) || mobile.test(value);

    }, "请正确填写您的手机号码");
// 邮政编码验证
    jQuery.validator.addMethod("isZipCode", function(value, element) {
        var tel = /^[0-9]{6}$/;
        return this.optional(element) || (tel.test(value));
    }, "请正确填写您的邮政编码");

    //助记码校验
    jQuery.validator.addMethod("isMnemonicCode", function(value, element) {
        var tel = /^[0-9A-Z()（）]*$/g;
        return this.optional(element) || (tel.test(value));
    }, "助记码只能包含数字小写字母和左右括号");
    //校验用户名是否含有空格
    jQuery.validator.addMethod("userblank", function(value, element) {
        var userblank = /^\S*$/;
        return this.optional(element) ||(userblank.test(value));
    }, "不可包含空格");

    //密码必须需包含数字和大小写字母中至少两种
    jQuery.validator.addMethod("pass", function(value, element) {
        var pwdblank = /^(?![0-9]+$)(?![a-z]+$)(?![A-Z]+$)[0-9A-Za-z]{6,15}$/;
        return this.optional(element) ||(pwdblank.test(value));
    }, "6-15位数字和字母");
})

