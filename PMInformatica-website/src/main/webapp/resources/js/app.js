var pmInformaticaWebSiteAngular = angular.module('pmInformaticaWebSiteAngular',
		[ 'pmInformaticaWebSiteAngular.controllers',
				'pmInformaticaWebSiteAngular.services', 'ngRoute',
				'angular-growl', 'ngMap', 'ui.bootstrap' ]);

angular.module('pmInformaticaWebSiteAngular.controllers', []);
angular.module('pmInformaticaWebSiteAngular.services', []);

pmInformaticaWebSiteAngular.config([ 'growlProvider', function(growlProvider) {
	growlProvider.globalTimeToLive({
		success : 5000,
		error : 10000,
		warning : 5000,
		info : 5000
	});
} ]);

pmInformaticaWebSiteAngular.directive('scrollToItem', function() {
	return {
		restrict : 'A',
		scope : {
			scrollTo : "@"
		},
		link : function(scope, $elm, attr) {

			$elm.on('click', function() {
				var positionToScroll = $(scope.scrollTo).position().top
						- $('#tableToScroll').position().top;

				$('html,body').animate({
					scrollTop : positionToScroll
				}, "slow");
			});
		}
	}
})

pmInformaticaWebSiteAngular.config([
		'$routeProvider',
		function($routeProvider) {

			$routeProvider.when(
					'/servizi',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Servizi/Servizi.jsp'
					}).when(
					'/contatti',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Contatti/Contatti.jsp'
					}).when(
					'/home',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Home/Home.jsp'
					}).when(
					'/prenotazione',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Prenotazione/Prenotazione.jsp'
					}).when(
					'/galleria',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Galleria/Galleria.jsp'
					}).when(
					'/offerte',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Offerte/Offerte.jsp'
					}).when(
					'/contenuti',
					{
						templateUrl : PM_INFORMATICA_WEBSITE.contextPath
								+ 'pages/Contenuti/Contenuti.jsp'
					}).otherwise({
						redirectTo : "/home"
					})
		} ]);