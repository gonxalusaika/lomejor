angular.module('MainApp', ['ngResource', 'ui.router', 'ngAnimate'])
	.controller('MainCtrl', ['$scope', 'Categorias', 'Encuestas', function($scope, Categorias, Encuestas){

		$scope.populares = {};
		$scope.cargarCategorias = function(){
			$scope.categorias = Categorias.todos();
		}
		$scope.cargarPopulares = function(){

		};
		$scope.seleccionarCategoria = function(categoria){
			$scope.categoria = Categorias.get({index: categoria.id});
		};
		$scope.seleccionarEncuesta = function(encuesta){
			$scope.encuesta = Encuestas.get({index: encuesta.id});
		};
		
		$scope.cargarCategorias();
	}]);