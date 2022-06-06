const cargarProductos = async () => {
  try {
    const res = await fetch("http://localhost:4000/api/productos");

    if (res.status === 200) {
      const datos = await res.json();

      let productos = "";
      let marca = "";
      datos.forEach((producto) => {
        
        if (producto.marca === 1) {
          marca = "Nike";
        } else if (producto.marca === 2){
          marca = "Saucony";
        } else if (producto.marca === 3){
          marca = "ASICS";
        } else if (producto.marca === 4){
          marca = "New Balance";
        }

        productos += `
            <div class="pelicula">
                <img class="poster" src="${producto.img}">
                <h3 class="titulo">${marca} ${producto.modelo}</h3>
                <h3 class="titulo">${producto.nombre}</h3> 
                <h3 class="titulo">$${producto.precio}</h3> 
            </div>
        `;
      });

      document.getElementById("contenedor").innerHTML = productos;
    } else if (respuesta.status === 401) {
      console.log("Error 401");
    } else if (respuesta.status === 404) {
      console.log("Error 404");
    }
  } catch (error) {
    console.log(error);
  }
};

cargarProductos();
