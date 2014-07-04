<%@include file="taglibs.jsp" %>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-home"></span> Home</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Manage Group<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="viewMembers.html">View Members</a></li>
								<li><a href="sendMessage.html">Send Message To Member</a></li>
								<li class="divider"></li>
								<li><a href="viewAddMember.html">Add Member</a></li>
								<li><a href="#">Remove Member</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-tasks"></span> Manage Tasks <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="addTask.html"><span class="glyphicon glyphicon-plus"></span> Add Task</a></li>
								<li class="divider"></li>
								<li><a href="#"><span class="glyphicon glyphicon-th-list"></span> View Tasks</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-ok"></span> View Completed Tasks</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search Member">
						</div>
						<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href='<c:url value="/login.html"></c:url>' ><span class="glyphicon glyphicon-pencil"></span> Sign in</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Profile<b class="caret"></b></a>
							<ul class="dropdown-menu">
							
								<li><a href="showProfile.html" ><span class="glyphicon glyphicon-user"></span> View Profile</a></li>
								<li class="divider"></li>
								<li><a href='<c:url value="/logout"></c:url>' ><span class="glyphicon glyphicon-off"></span> Log Out</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
