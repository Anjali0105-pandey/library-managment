<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
</script>
</head>
<body align="center">
	<div>
		<div>
			<div class="center">
				<h3>Student Preference filling</h3>
			</div>
			<br>
			<div class="divider"></div>
			<form method="POST">
				<%int roll=Integer.parseInt(session.getAttribute("roll").toString()); %>
				<input type="hidden" id="roll" value="<%=roll%>"></input><br>
				
				<br>
				<div>
					<label>Enter Semester : </label> <select id="semester">
						<option value="1">One</option>
						<option value="2">two</option>
						<option value="3">three</option>
						<option value="4">four</option>
						<option value="5">five</option>
						<option value="6">six</option>
						<option value="7">seven</option>
						<option value="8">eight</option>
					</select>
				</div>
				<br>
				<div class="input-field">
					<label>Enter Type : </label> <select id="type">

						<option value="E">Elective</option>
						<option value="O">Open Elective</option>
					</select>
				</div>
				<br>
				<div class="input-field">
					<label>Enter number : </label> <select id="num">
						<option value="1">I</option>
						<option value="2">II</option>
						<option value="3">III</option>
						<option value="4">IV</option>
						<option value="5">V</option>


					</select>
				</div>
				<br>
				<div class="input-field">
					<label>Enter First preference : </label> <select id="elect1">
						<option>Select first preference</option>
					</select>
				</div>
				<br>
				<div class="input-field">
					<label>Enter Second preference : </label> <select id="elect2">
						<option>Select second preference</option>
					</select>
				</div>
				<br>
				<div class="input-field">
					<label>Enter Third preference : </label> <select id="elect3">
						<option>Select Third preference</option>
					</select>
				</div>
				<br>
				<div class="center">
					<button class="btn" id="add">Add</button>

					<button class="btn" id="sub" ><a href="r1process.jsp">Go Back</a></button>
				</div>

			</form>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

	<script type="text/javascript">
            $(document).ready(function () {

            	$('#add').click(function(e){
            		e.preventDefault();
            		 let sid = $('#semester').val();
                     let tid = $('#type').val();
                     let nid = $('#num').val();
                     let roll = $('#roll').val();
                     let p1 = $('#elect1').val();
                     let p2 = $('#elect2').val();
                     let p3  = $('#elect3').val();
                     
                     let data = {
                         operation: "insert",
                         sem : sid,
                         type:tid,
                         num:nid,
                         roll:roll,
                         pref1:p1,
                         pref2:p2,
                         pref3:p3
                
                         
                         
                     };
            		 $.ajax({
            	            url:'semesterServlet',
            	            data:data,
            	            type:'GET',
            	            cache:false,
            	            success:function(data){
            	               alert(data);
            	               location.reload(true);
            	           
            	            },
            	            error:function(){
            	              alert('error');
            	            }
            	         }
            	    );
            		 
                  });
           

            	

                $('#semester').change(function () {
                    $('#elect1').find('option').remove();
                    $('#elect2').find('option').remove();
                    $('#elect3').find('option').remove();

                    let sid = $('#semester').val();
                    let tid = $('#type').val();
                    let nid = $('#num').val();
                    let data = {
                        operation: "elect",
                        sem : sid,
                        type:tid,
                        num:nid
                        
                        
                        
                    };
						console.log(sid+" "+tid+" "+nid);
                    $.ajax({
                        url: "semesterServlet",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            data = data.substring(data.indexOf('['));
                            console.log(data);
                            let obj = $.parseJSON(data);
                            console.log(obj);
                            $.each(obj, function (key, value) {
                            	console.log(key+" "+value);
                                $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                                 $('#elect2').append('<option value="' + value + '">' + value + '</option>')
                                  $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                            });
                        //    $('select').formSelect();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#elect2').append('<option>Not Unavailable</option>');
                            $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                             $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                        },
                        cache: false
                    });
                });
                
                $('#type').change(function () {
                    $('#elect1').find('option').remove();
                    $('#elect2').find('option').remove();
                    $('#elect3').find('option').remove();

                    let sid = $('#semester').val();
                    let tid = $('#type').val();
                    let nid = $('#num').val();
                    let data = {
                        operation: "elect",
                        sem : sid,
                        type:tid,
                        num:nid
                        
                        
                        
                    };
						console.log(sid+" "+tid+" "+nid);
                    $.ajax({
                        url: "semesterServlet",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            data = data.substring(data.indexOf('['));
                            console.log(data);
                            let obj = $.parseJSON(data);
                            console.log(obj);
                            $.each(obj, function (key, value) {
                            	console.log(key+" "+value);
                                $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                                 $('#elect2').append('<option value="' + value + '">' + value + '</option>')
                                  $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                            });
                        //    $('select').formSelect();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#elect2').append('<option>Not Unavailable</option>');
                            $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                             $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                        },
                        cache: false
                    });
                });
                
                $('#num').change(function () {
                    $('#elect1').find('option').remove();
                    $('#elect2').find('option').remove();
                    $('#elect3').find('option').remove();

                    let sid = $('#semester').val();
                    let tid = $('#type').val();
                    let nid = $('#num').val();
                    let data = {
                        operation: "elect",
                        sem : sid,
                        type:tid,
                        num:nid
                        
                        
                        
                    };
						console.log(sid+" "+tid+" "+nid);
                    $.ajax({
                        url: "semesterServlet",
                        method: "GET",
                        data: data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            data = data.substring(data.indexOf('['));
                            console.log(data);
                            let obj = $.parseJSON(data);
                            console.log(obj);
                            $.each(obj, function (key, value) {
                            	console.log(key+" "+value);
                                $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                                 $('#elect2').append('<option value="' + value + '">' + value + '</option>')
                                  $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                            });
                        //    $('select').formSelect();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $('#elect2').append('<option>Not Unavailable</option>');
                            $('#elect1').append('<option value="' + value + '">' + value + '</option>')
                             $('#elect3').append('<option value="' + value + '">' + value + '</option>')
                        },
                        cache: false
                    });
                });
                
                
               

            });
        </script>
</body>
</html>
