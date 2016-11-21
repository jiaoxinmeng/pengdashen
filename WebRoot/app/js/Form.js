var userInfoModule = angular.module('UserInfoModule',[]);

userInfoModule.controller('UserInfoCtrl', ['$scope', function($scope){
	$scope.userInfo = {
		email:"17473687@qq.com",
		password:"111111",
		autoLogin:true
	};
	
	$scope.getFormData = function(){
		console.log($scope.userInfo);
	};

	$scope.setFormData = function(){
		$scope.userInfo = {
			email:'pengyihui19820802@163.com',
			password:'111111',
			autoLogin:false
		}
	};

	$scope.resetForm = function(){
		$scope.userInfo = {
			email:"17473687@qq.com",
			password:"111111",
			autoLogin:true
		}
	}
}])