<?php
require("../clases/class.php");
$class = new Mysql();
$item = $_GET['id'];
$find = mysqli_query($class->conexion(), "SELECT * from player.item_shop_buy WHERE id='".$item."'");
$rows = mysqli_fetch_array($find,MYSQLI_ASSOC);
if($rows['id']){
?>
<div id="showedititem">
		<div class="panel panel-red">
		<div class="panel-heading">Agregar Item - Add Items</div>
		<div class="panel-body">
		 <form action="index.php?s=itemshop" method="post" enctype="multipart/form-data">
		   <div class="box-body">
		       <div class="form-group">
		           <label for="exampleInputEmail1">Cantidad :</label>
		           <input type="number" value="<?php echo $rows['count']; ?>" name="itemcount" class="form-control" id="itemcount" value="1" placeholder="Cantidad">
		       </div> 
		   		<div class="form-group">
		           <label for="exampleInputEmail1">ID del item:</label>
		           <input type="text" value="<?php echo $rows['id']; ?>" name="itemid" class="form-control" id="itemid" placeholder="ID del item">
		       </div> 
		       <div class="form-group">
		           <label for="exampleInputEmail1">Nombre del item:</label>
		           <input type="text" value="<?php echo $rows['name']; ?>" name="itemname" class="form-control" id="itemname" placeholder="Nombre del item">
		       </div>     
					<div class="form-group">
		           <label for="exampleInputEmail1">Precio del item:</label>
		           <input type="text" value="<?php echo $rows['prices']; ?>" name="prices" class="form-control" id="prices" placeholder="Precio del Item">
		       </div> 
					<div class="form-group">
		           <label for="exampleInputEmail1">Descripcion del item:</label> <br>
		           <textarea rows="4" cols="50" class="form-control" name="descript"><?php echo $rows['descript']; ?></textarea> 		 
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
<?php } ?>