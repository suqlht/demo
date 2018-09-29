<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <title>
        <@spring.message "system.title"/> | 管理面板</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta name="MobileOptimized" content="320">
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="${rc.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css" />
    <script>
    </script>

</head>

<body>
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->

        <!-- END SIDEBAR -->

        <!-- BEGIN CONTENT -->

        <div class="page-content-wrapper">

            <div class="page-content">
                <div id="ajax-modal" class="modal fade" tabindex="-1" data-replace="true" data-keyboard="false" data-backdrop="static" data-focus-on=".autofocus"></div>

                <h5 class="page-title">项目管理</h5>
                <hr>


                <div class="clearfix" style="padding-bottom:15px">

                </div>
                <div ng-app="myApp" ng-controller="AngularWayChangeDataCtrl as showCase">
                    <form class="form-inline" ng-submit="showCase.addPerson()">
                        <table class="table hover" id="items_list">
                            <thead>
                                <tr>
                                    <th>
                                        <div class="form-group">
                                            <label>
                                                <input class="form-control" type="number" name="id" ng-model="showCase.person2Add.id" value="">
                                            </label>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="form-group">
                                            <label>
                                                <input type="text" class="form-control" name="firstName" ng-model="showCase.person2Add.firstName" value="">
                                            </label>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="form-group">
                                            <label>
                                                <input type="text" class="form-control" name="lastName" ng-model="showCase.person2Add.lastName" value="">
                                            </label>
                                        </div>
                                    </th>
                                    <th>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-success">新增</button>
                                        </div>
                                    </th>
                                </tr>
                                <tr>
                                    <th>ID</th>
                                    <th>FirstName</th>
                                    <th>LastName</th>
                                    <th></th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr ng-repeat="person in showCase.persons">
                                    <td>{{ person.id }}</td>
                                    <td>{{ person.firstName }}</td>
                                    <td>{{ person.lastName }}</td>
                                    <td>
                                        <button type="button" ng-click="showCase.modifyPerson($index)" class="btn btn-warning">修改</button>
                                        <button type="button" ng-click="showCase.removePerson($index)" class="btn btn-danger">删除</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>

                <br />

                <!-- END PAGE CONTENT-->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
    <!-- END FOOTER -->

    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/datatables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/angular1.4.6.min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>


    <script type="text/javascript">
      var dataTable ;
      var data1 = [{
          "id": 860,
          "firstName": "Superman",
          "lastName": "Yoda"
      }, {
          "id": 870,
          "firstName": "Foo",
          "lastName": "Whateveryournameis"
      }, {
          "id": 590,
          "firstName": "Toto",
          "lastName": "Titi"
      }, {
          "id": 803,
          "firstName": "Luke",
          "lastName": "Kyle"
      }];
        $(document).ready(function() {
            dataTable = $('#items_list').DataTable({
                "bSort": true,
                "bFilter": false,
                paging: false,
                info: false,
                data:data1,
                columns:[]
                "bLengthChange": false

            });
        });

        var ngApp = angular.module("myApp", []);
        ngApp.controller("AngularWayChangeDataCtrl", function($scope) {
            var vm = this;
            vm.persons = data1;
            vm.person2Add = _buildPerson2Add(1);
            vm.addPerson = addPerson;
            vm.modifyPerson = modifyPerson;
            vm.removePerson = removePerson;

            function _buildPerson2Add(id) {
                return {
                    id: id,
                    firstName: 'Foo' + id,
                    lastName: 'Bar' + id
                };
            }

            function addPerson() {
                vm.persons.push(angular.copy(vm.person2Add));
                vm.person2Add = _buildPerson2Add(vm.person2Add.id + 1);
                dataTable.rows().invalidate();
            }

            function modifyPerson(index) {
                vm.persons.splice(index, 1, angular.copy(vm.person2Add));
                vm.person2Add = _buildPerson2Add(vm.person2Add.id + 1);
            }

            function removePerson(index) {
                vm.persons.splice(index, 1);
            }
        });
    </script>


</body>

</html>
