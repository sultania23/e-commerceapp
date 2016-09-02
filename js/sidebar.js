angular.module('app').controller('SideMenu', function($scope) {
    $scope.isCollapsed = false;
    $(function() {
        $('#slide-submenu').on('click', function() {
            $(this).closest('.list-group').fadeOut('slide', function() {
                $('.mini-submenu').fadeIn();
            });
        });
        $('.mini-submenu').on('click', function() {
            $(this).next('.list-group').toggle('slide');
            $('.mini-submenu').hide();
        })
    })
});