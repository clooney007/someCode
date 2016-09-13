angular.module('Form')
	.directive('formTitle', function(){
		return {
			template: '<h1>My form title</h1>',
			replace: true,
			restrict: 'CM'
		};
	});