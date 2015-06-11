angular.module('MainApp')
	.controller('EncuestaCtrl', ['$scope', 'Encuestas', '$stateParams', function($scope, Encuestas, $stateParams){
		$scope.encuesta = Encuestas.get({index: $stateParams.id});

		$scope.votar = function(opcion){
			Encuestas.votar({opcion: opcion.id, otra_cosa: "Pepe"});
			$('#modal_votado').openModal();
			$scope.categoria = undefined;
			$scope.encuesta = undefined;
		}
		
	}]);