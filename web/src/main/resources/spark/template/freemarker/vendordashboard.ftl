<#import "masterTemplate.ftl" as layout />

<@layout.masterTemplate title="Bug Miner Vendor Dashboard" moduleName="crowdtesterApp">

    <#include "postlogin_header.ftl">
<div class="container">
    <div class="vd-jumbotron">
        <h3><b><i>Your Profile Info</b></i></h3>

        <p>Email Id:${user.emailId}</p>

        <p>Your Charge Back: ${vendor.chargeBack}</p>

        <p>Incentives :${vendor.incentive}</p>

    </div>
</div>
<div class="container" style="padding-top: 25px;">
    <div class="row">
        <div class="table-responsive">
            <table id="mytable" class="table table-bordered vd-table-hover table-responsive vd-table-striped">
                <th style : 3px;><input type="checkbox" id="checkall"/></th>
                <th>Name</th>
                <th>Description</th>
                <th>Platform</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Delete</th>
                </thead>
                <tbody>
                    <#list apps as app>
                    <tr>
                        <td><input type="checkbox" class="checkthis"/></td>
                        <td>${app.name}</td>
                        <td>${app.description}</td>
                        <td>${app.platform}</td>
                        <td>${app.startDate}</td>
                        <td>${app.endDate}</td>
                        <td>
                            <p data-placement="top" data-toggle="tooltip" title="Delete">
                                <button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal"
                                        data-target="#delete"><span class="glyphicon glyphicon-trash"></span></button>
                            </p>
                        </td>
                    </tr>
                    </#list>
                </tbody>
            </table>
            <div class="clearfix"></div>
            <ul class="pagination pull-right">
                <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
            </ul>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 class="modal-title">Select Testsr</h3>
            </div>
            <div class="modal-body">

                <table class="table table-striped vd-table-hover" id="tblGrid">
                    <thead id="tblHead">
                    <tr>
                        <th>Select</th>
                        <th>Name</th>
                        <th>Skill</th>
                        <th>Credit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox" class="checkthis"/>
                        </td>
                        <td>xyz</td>
                        <td>android,java,php</td>
                        <td><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                        </td>
                    </tr>

                    <tr>
                        <td><input type="checkbox" class="checkthis"/></td>
                        <td>abc</td>
                        <td>ios,android</td>
                        <td><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="checkthis"/></td>
                        <td>xyz</td>
                        <td>ios</td>
                        <td><span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                            <span class="glyphicon glyphicon-star" aria-hidden="true"></span></td>
                    </tr>
                    </tbody>
                </table>

            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
                <input type="button" class="btn btn-warning btn-sm pull-right" value="Select">
            </div>
        </div>

    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                        class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
            </div>
            <div class="modal-body">

                <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you
                    want to delete this Record?
                </div>

            </div>
            <div class="modal-footer ">
                <button type="button" class="btn btn-success"><span class="glyphicon glyphicon-ok-sign"></span> Yes
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal"><span
                        class="glyphicon glyphicon-remove"></span> No
                </button>
            </div>
        </div>

    </div>
    <!-- /.modal-dialog -->
</div>

<!-- Modal -->
<div class="modal fade" id="myModalHorizontal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Body -->
            <div class="modal-body">

                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="inputname">AppName</label>

                        <div class="col-sm-8">
                            <input type="email" class="form-control"
                                   id="inputname" placeholder="Application Name"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="inputdesc">Description</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control"
                                   id="inputdesc" placeholder="Description"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="inputsev">Platform</label>

                        <div class="col-sm-10">
                            <select name="platform">
                                <option value="android">Android</option>
                                <option value="ios">IOS</option>

                            </select>
                            <br><br></div>
                    </div>
                    <br/>


                    <div class="container" id="sandbox-container">
                        <div class="input-daterange input-group" id="datepicker">
                            <label class="col-sm-1 control-label"
                                   for="inputstartdate">Start:</label>

                            <div class="col-sm-4"><input class="form-control" name="start" type="text"></div>

                            <label class="col-sm-1 control-label"
                                   for="inputenddate">End:</label>

                            <div class="col-sm-4"><input class="form-control" name="end" type="text">
                            </div>
                        </div>
                    </div>
                    <br/>

                    <div class="form-group">
                        <label class="col-sm-2 control-label"
                               for="inputtester">TesterName</label>

                        <div class="col-sm-8">
                            <input type="email" class="form-control"
                                   id="inputtester" placeholder="Tester Name"/>
                        </div>
                    </div>
            </div>

            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn-vendor-dashboard"
                        data-dismiss="modal">
                    Close
                </button>
                <button type="button" class="btn-vendor-dashboard">
                    Add Application
                </button>
            </div>
            </form>
        </div>
    </div>
</div>
<div class="container">

    <button class="btn btn-vendor-dashboard btn-lg" data-toggle="modal" data-target="#myModalHorizontal">
        ADD
    </button>
    <button type="button" class="btn btn-vendor-dashboard btn-sm">DELETE</button>
    <button type="button" class="btn btn-vendor-dashboard btn-sm" href="#myModal" id="openBtn" data-toggle="modal">
        SELECT TESTER
    </button>
    <a href="bugtracker.ftl">
        <button type="button" class="btn btn-vendor-dashboard btn-sm">BUG TRACKER</button>
    </a>

</div>
</@layout.masterTemplate>