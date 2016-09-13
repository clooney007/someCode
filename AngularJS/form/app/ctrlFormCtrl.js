angular.module('Form')
	.controller('FormCtrl', function($scope, $rootScope, $location, $http, $interval, addText){
		$rootScope.school = addText.addTxt('***');
		$scope.url = $location.absUrl;
		$scope.x = 'firstName';
		$scope.reverse = false;
		$scope.agreement = false;
		
		/*** will add real couses data in from API ***/
		$scope.classes = [
		                {name:"science", course:5},
		                {name:"math", course:4}
		                ];
		
		/*** will get all student data from API ***/
		$http.get('includes/persons.php').then(function(response){
			$scope.persons = response.data.persons;
		});
		
		//clock
		$interval(function(){
			$scope.currentTime = new Date().toLocaleTimeString();
		}, 1000);
		
		//sort table by table head
		$scope.sort = function(x){
			$scope.reverse = (x === $scope.x)? !$scope.reverse : true;
			$scope.x = x;
		}
		
		//add new student function
		$scope.addStudent = function(){
			var firstName = $scope.firstName;
			var lastName = $scope.lastName;
			var email = $scope.email;
			var error = false;
			
			if(firstName === undefined) error = true;
			if(lastName === undefined) error = true;
			if(email === undefined) error = true;
			
			if(error === false){
				
				//real post function 
				/*
				$http({
			        method : "POST",
			        data : {firstName:firstName, lastName:lastName, email:email},
			        url : "***"
			    }).then(function mySucces(response) {
			        $scope.msg = response.data;
			    }, function myError(response) {
			        $scope.msg = response.statusText;
			    });
				*/
				
				/*** for testing only, comment out when push live for production ***/
				$scope.persons.push({
					firstName:firstName,
					lastName:lastName,
					email:email
				});
				
				$scope.reset();
			}
		}
		
		//reset form
		$scope.reset = function(){
			var reset = {
					firstName:'',
					lastName:'',
					email:''
			}
			
			$scope.firstName = reset.firstName;
			$scope.lastName = reset.lastName;
			$scope.email = reset.email;
		}
	});