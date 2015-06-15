angular.module('MainApp')
	.controller('MainCtrl', ['$scope', 'Categorias', 'Encuestas', function($scope, Categorias, Encuestas){
		$scope.cargarCategorias = function(){
			$scope.categorias = Categorias.todos();
		}		
		$scope.cargarCategorias();
	}]);