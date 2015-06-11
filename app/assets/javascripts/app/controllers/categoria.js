angular.module('MainApp')
	.controller('CategoriaCtrl', ['$scope', 'Categorias', '$stateParams', function($scope, Categorias, $stateParams){
		$scope.categoria = Categorias.get({index: $stateParams.id});
	}]);