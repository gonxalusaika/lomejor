angular.module('MainApp')
	.factory('Categorias', ['$resource', function($resource){
		return $resource('/admin/categorias/:index.json', {}, {
			todos: {method: 'GET', isArray: true},
			get: {method: 'GET', isArray: false}
		});
	}])
	.factory('Encuestas', ['$resource', function($resource){
		return $resource('/admin/encuestas/:index/:metodo.json', {}, {
			populares: {method: 'GET', isArray: true, params: {metodo: 'populares'}},
			get: {method: 'GET', isArray: false},
			votar: {method: 'POST', params: {metodo: 'votar'}}
		});
	}]);