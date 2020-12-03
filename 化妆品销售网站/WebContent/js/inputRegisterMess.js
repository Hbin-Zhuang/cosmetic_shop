$(function () {
	 // 1.获取事件
	var ipt = document.querySelector('#ipt');
	var text = document.querySelector('.text');
	var ipt1 = document.querySelector('#ipt1');
	var text1 = document.querySelector('.text1');
    var ipt2 = document.querySelector('#ipt2');
    var text2 = document.querySelector('.text2');
    var ipt3 = document.querySelector('#ipt3');
	var text3 = document.querySelector('.text3');
    var safe = document.querySelector('.safe');
    var ruo = document.querySelector('.ruo');
    var zhong = document.querySelector('.zhong');
    var qiang = document.querySelector('.qiang');
    // 2.注册事件 处理程序
    ipt.onblur = function() {
    	if(this.value.length !== 11) {
    		text.className = 'mess wrong';
    		text.innerHTML = '手机号码格式不正确，请重新输入 ';
    		text.style.color = '#E12D2C';
    	} else {
    		text.className = 'mess right';
            text.innerHTML = '恭喜您输入正确！';
            text.style.color = '#8CD232';
    	}
    }
    ipt1.onblur = function() {
    	if (this.value.length > 0) {
    		text1.style.display = 'none';
    	} else { 		
    		text1.style.display = 'inline-block';
    	}
    }
    ipt2.onblur = function() {
        if (this.value.length < 6 || this.value.length > 18) {
        	text2.className = 'mess wrong';
            text2.innerHTML = '您输入的位数不对，要求6-18位';
            text2.style.color = '#E12D2C';
            safe.style.display = 'none';
        } else {
        	text2.className = 'mess right';
            text2.innerHTML = '恭喜您输入正确！';
            text2.style.color = '#8CD232';
            safe.style.display = 'block';
            if (this.value.length >= 6 && this.value.length < 10) {
            	 ruo.style.display = 'inline-block';
            	 zhong.style.display = 'none';
            	 qiang.style.display = 'none';
            } else if (this.value.length >= 10 && this.value.length < 14) {
            	 ruo.style.display = 'none';
            	 zhong.style.display = 'inline-block';
            	 qiang.style.display = 'none';
            } else {
            	ruo.style.display = 'none';
           	    zhong.style.display = 'none';
           	    qiang.style.display = 'inline-block';
            }
            
        }
    }
    ipt3.onblur = function() {
    	if (this.value === ipt2.value) {
    		text3.className = 'mess right';
            text3.innerHTML = '两次密码输入正确！';
            text3.style.color = '#8CD232';
    	} else {
    		text3.className = 'mess wrong';
            text3.innerHTML = '两次密码输入不正确！';
            text3.style.color = '#E12D2C';
    	}
    }
})