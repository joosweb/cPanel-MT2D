<?php 
require("../clases/class.php");
?>
<script type="text/javascript">
$("#addedit").click(function(){
	displaying = $("#add-edit").css("display");
        if(displaying == "block") {
          $("#add-edit").fadeOut('slow',function() {
           $("#add-edit").css("display","none");
          });
        } else {
          $("#add-edit").fadeIn('slow',function() {
            $("#add-edit").css("display","block");
          });
      }
});
$("#addelet").click(function(){
	displaying = $("#add-delet").css("display");
        if(displaying == "block") {
          $("#add-delet").fadeOut('slow',function() {
           $("#add-delet").css("display","none");
          });
        } else {
          $("#add-delet").fadeIn('slow',function() {
            $("#add-delet").css("display","block");
          });
      }
});
$("#edititem").click(function(){

   $('#showedit').html("<center><img src='images/loading.gif'></center>");
   var delay = 2000; //Your delay in milliseconds

	var option = $("#optionedit").val();
	setTimeout(function(){
	$.ajax({
	    type: "POST",
	    url: "pages/edititem.php?id="+option,
	    success: function(a) {
        $('#showedit').html(a).fadeIn(400);
	    }
    });
    }, delay);
});
</script>
<script type="text/javascript" src="js/bootstrap-modal.js"></script>
<div class="container-fluid">
<!-- Button trigger modal -->
<aside class="right-side">
<!-- Content Header (Page header) -->
	<section class="content-header">
	<h1>
	Itemshop                        
	</h1>
	<ol class="breadcrumb">
	<li><a href="#"><i class="fa fa-dashboard"></i>Itemshop</a></li>
	<li><a href="#">admin</a></li>
	<li class="active">Add Categorias - Add Item - Edit Items</li>
	</ol>
	</section>
	<div class="panel panel-warning">
	<div class="panel-heading"><a href="#" id="addedit">Add Categorias - Add Item - Edit Items</a></div>
	<div class="panel-body">
	<div id="add-edit" style="display:none;">
	<table class="table">
	<tr>
	  <td>
		<form class="form-inline">
		  <div class="form-group">
		    <input type="text" class="form-control" id="exampleInputName2" placeholder="Agregar Categoria">
		   <td><input type="button" id="add-cat" name="add-cat" value="Agregar" class="btn btn-success"></td>
		  </div>
		</form>
		</td>
   </tr>
   <tr>
   	<td>
   		<form class="form-inline">
		  <div class="form-group">
		    <select name="delete-cat" class="form-control">
			 <?php 
		     $itemshop = new itemshop();
		     $itemshop->get_cats();
		     ?>
		    </select>
		    <td><input type="button" id="delete-cat" name="delete-cat" value="Eliminar" class="btn btn-success"></td>
		  </div>
		</form>
	   	</td>
	   </tr>
	  </table>
	 </div>
	</div>
	</div>
	<div class="panel panel-warning">
	<div class="panel-heading"><a href="#" id="addelet">Add Items - Delete Items</a></div>
	<div class="panel-body">
	<div id="add-delet" style="display:none;">
	<div class="col-md-12">
	<div class="col-md-12">
		<div class="panel panel-primary">
		<div class="panel-heading">Eliminar Item - Editar Items</div>
		<div class="panel-body">
		<div class="form-inline">
		<form action="itemshop.php" class="js-ajax-php-json" method="post" accept-charset="utf-8">
		  <div class="form-group">
		    <select name="optionedit" id="optionedit" class="form-control">
			 <?php 
		     $itemshop = new itemshop();
		     $itemshop->get_items();
		     ?>
		    </select>
		    <button type="button" id="edititem" name="edititem" class="fa fa-edit btn btn-info"> Editar</button>
		    <button type="button" id="delete-item" name="delete-item" class="fa fa-times-circle btn btn-info"> Eliminar</button>
		    <button type="button" data-toggle="modal" data-target="#myModal" id="add-item" name="edit-item" class="fa fa-edit btn btn-info"> Añadir Item</button>
		  </div> 
		</form>
	    </div>
		</div>
		</div>
		<div id="showedit"></div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
	    <div class="modal-content">
	    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Agregar Item</h4>
	    </div>
	    <div class="modal-body">
		<div class="panel panel-red">
		<div class="panel-heading">Agregar Item - Add Items</div>
		<div class="panel-body">
		 <form action="index.php?s=itemshop" method="post" enctype="multipart/form-data">
		   <div class="box-body">
		       <div class="form-group">
		           <label for="exampleInputEmail1">Cantidad :</label>
		           <input type="number" name="itemcount" class="form-control" id="itemcount" value="1" placeholder="Cantidad">
		       </div> 
		   		<div class="form-group">
		           <label for="exampleInputEmail1">ID del item:</label>
		           <input type="text" name="itemid" class="form-control" id="itemid" placeholder="ID del item">
		       </div> 
		       <div class="form-group">
		           <label for="exampleInputEmail1">Nombre del item:</label>
		           <input type="text" name="itemname" class="form-control" id="itemname" placeholder="Nombre del item">
		       </div>     
					<div class="form-group">
		           <label for="exampleInputEmail1">Precio del item:</label>
		           <input type="text" name="prices" class="form-control" id="prices" placeholder="Precio del Item">
		       </div> 
					<div class="form-group">
		           <label for="exampleInputEmail1">Descripcion del item:</label> <br>
		           <textarea rows="4" cols="50" class="form-control" name="descript"></textarea> 		 
			  </div>
				<div class="form-group">
		           <label for="exampleInputFile">Imagen del item:</label>
		           <input type="file" id="img" name="img">
		           <p class="help-block">Seleccione una imagen desde su escritorio.</p>
		  		 </div> 
		  		 <div class="form-group">
		           <label for="exampleInputFile">Categoria:</label><br>
		           <select name="catid">
					<?php 
					$itemshop = new itemshop();
					$itemshop->get_cats();
					?>
					</select>
				    </div> 		
				    <div class="form-group">
				    <label for="exampleInputFile">Descuento:</label><br>
				    <select name="descuento">
					<option value="0">0</option>
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="40">40</option>
					<option value="50">50</option>
					<option value="60">60</option>
					<option value="70">70</option>
					<option value="80">80</option>
					<option value="90">90</option>
					<option value="99">99</option>
					</select>
					</div> 							
					</div><!-- /.box-body -->
					<div class="box-footer">
				<input type="submit" id="Agregar" name="Item" value="Agregar" class="btn btn-primary">
				</div>
             </form>	
		</div>
		</div>
	 </div>
	</div>
	</div>
	 </div>

	