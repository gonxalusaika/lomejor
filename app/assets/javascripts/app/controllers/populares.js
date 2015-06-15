angular.module('MainApp')
	.controller('PopularesCtrl', ['$scope', 'Encuestas', function($scope, Encuestas){
		$scope.encuestas = Encuestas.populares();
	}]);