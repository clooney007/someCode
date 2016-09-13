angular.module('Form')
	.service('addText', function(){
		this.addTxt = function(t){
			return t + ' College';
		}
	});