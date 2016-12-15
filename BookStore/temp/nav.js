Vue.component('my-nav',{
    template:  `<nav class="navbar navbar-inverse navbar-fixed-top">
					<div class="container">
						<div class="navbar-header">
							<a href="index.html"><span class="navbar-brand">书吧</span></a>
							<button class="navbar-toggle" data-toggle='collapse' data-target='#navId'>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse" id='navId'>
							<ul class="nav navbar-nav">
								<li v-bind:class='{active:active.index}'><a href="index.html">网站首页</a></li>
								<li v-bind:class='{active:active.about_us}'><a href="">关于我们</a></li>
								<li v-bind:class='{active:active.book_show}'><a href="bookshow.html">图书展示</a></li>
								<li v-bind:class='{active:active.concat_us}'><a href="">联系我们</a></li>
								<li v-bind:class='{active:active.shopping}'><a href="shopping.html">购物车</a></li>
								<li v-bind:class='{active:active.addmore}'><a href="addmore.html">添加图书</a></li>
							</ul>
						</div>
					</div>
				</nav>`,
	data:function(){
		return{
			active:{
				index:false,
				about_us:false,
				book_show:false,
				concat_us:false,
				shopping:false,
				addmore:false,
			}
		}
	},
	props:['actived'],
	mounted:function(){
		//判断哪个是活动页
		if(this.actived == 'index'){
			this.active.index = true;
		}else if(this.actived == 'about_us'){
			this.active.about_us =true;
		}else if(this.actived == 'book_show'){
			this.active.book_show =true;
		}else if(this.actived == 'concat_us'){
			this.active.concat_us =true;
		}else if(this.actived == 'shopping'){
			this.active.shopping =true;
		}else{
			this.active.addmore =true;
		}
	}
})
new Vue({
    el:'#nav',    
})