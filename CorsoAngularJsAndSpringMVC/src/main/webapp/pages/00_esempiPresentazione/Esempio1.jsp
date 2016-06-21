<!DOCTYPE html>
<html>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<body>
	
		<p>Try to change the names.</p>
	
		<div ng-app="myApp" ng-controller="myCtrl">
	
			First Name: <input type="text" ng-model="firstName"><br>
			Last Name: <input type="text" ng-model="lastName"><br> <br>
			Full Name: {{firstName + " " + lastName}}
		</div>
	
		<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
				$scope.firstName = "John";
				$scope.lastName = "Doe";
			});
		</script>
	
	
		<!-- preso da:
		http://www.w3schools.com/angular/angular_intro.asp
		link diretto esempio:
		http://www.w3schools.com/angular/tryit.asp?filename=try_ng_intro_controller
		 -->
	
	</body>
</html>
