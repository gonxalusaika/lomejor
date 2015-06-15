angular.module('MainApp')
	.controller('ResultadosCtrl', ['$scope', 'Encuestas', '$stateParams', function($scope, Encuestas, $stateParams){
		
		$scope.cargarResultados = function(){
			 Encuestas.resultados({index: $stateParams.id }, function(res){
			 	$scope.encuesta = res;
				var total_resultados = 0;
				for(var i=0; i<$scope.encuesta.opciones.length; i++){
					total_resultados += $scope.encuesta.opciones[i].cantidad_elegida;
				}
				for(var i=0; i<$scope.encuesta.opciones.length; i++){
					$scope.encuesta.opciones[i].porcentaje = Math.round(($scope.encuesta.opciones[i].cantidad_elegida * 100)/total_resultados);
				}				
			});
		};

		$scope.cargarResultados();
	}]);