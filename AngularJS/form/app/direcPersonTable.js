angular.module('Form')
	.directive('personsTableTitle', function(){
		return {
			restrict: 'A',
			template: '<h2>Students table</h2>'
		}
	});