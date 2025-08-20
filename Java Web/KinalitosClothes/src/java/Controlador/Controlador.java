package Controlador;

import com.kinalitosclothes.modelo.*;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");

        ProveedoresDAO proveedoresDAO = new ProveedoresDAO();
        Proveedores proveedores = new Proveedores();

        if (menu.equals("Principal")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if (menu.equals("Index")) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if (menu.equals("Proveedor")) {
            switch (accion) {
                case "Listar":
                    List<Proveedores> listaProveedores = proveedoresDAO.listar();
                    request.setAttribute("proveedores", listaProveedores);
                    break;
                case "Buscar":
                    String codigoProv = request.getParameter("txtBuscarId");
                    List<Proveedores> listaProveedoresB = new ArrayList<>();
                    if (codigoProv != null && !codigoProv.trim().isEmpty()) {
                        try {
                            int codigoP = Integer.parseInt(codigoProv);
                            Proveedores proveedorEncontrado = proveedoresDAO.buscar(codigoP);

                            if (proveedorEncontrado != null) {
                                listaProveedoresB.add(proveedorEncontrado);
                            } else {
                                request.setAttribute("error", "Proveedor no encontrado");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Proveedor inválido");
                        }
                    } else {
                        listaProveedoresB = proveedoresDAO.listar();
                    }

                    request.setAttribute("proveedores", listaProveedoresB);
                    request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);
                    break;
                case "Agregar":
                    String nombreProveedor = request.getParameter("txtNombreProveedor");
                    String telefonoProveedor = request.getParameter("txtTelefonoProveedor");
                    String correoProveedor = request.getParameter("txtCorreoProveedor");
                    String direccionProveedor = request.getParameter("txtDireccionProveedor");
                    proveedores.setNombreProveedor(nombreProveedor);
                    proveedores.setTelefonoProveedor(telefonoProveedor);
                    proveedores.setCorreoProveedor(correoProveedor);
                    proveedores.setDireccionProveedor(direccionProveedor);
                    proveedoresDAO.agregar(proveedores);
                    if (proveedores != null) {
                        request.getRequestDispatcher("Controlador?menu=Proveedor&accion=Listar").forward(request, response);
                    } else {
                        System.out.println("No sale");
                    }
                    break;
                case "Editar":
                    int idEditar = Integer.parseInt(request.getParameter("id"));
                    Proveedores pedidoEditar = proveedoresDAO.buscar(idEditar);
                    request.setAttribute("proveedor", pedidoEditar);
                    request.setAttribute("proveedores", proveedoresDAO.listar());
                    break;
                case "Actualizar":
                    int codigoProveedor = Integer.parseInt(request.getParameter("txtCodigoProveedor"));
                    String nombreProveedorE = request.getParameter("txtNombreProveedor");
                    String telefonoProveedorE = request.getParameter("txtTelefonoProveedor");
                    String correoProveedorE = request.getParameter("txtCorreoProveedor");
                    String direccionProveedorE = request.getParameter("txtDireccionProveedor");

                    proveedores.setCodigoProveedor(codigoProveedor);
                    proveedores.setNombreProveedor(nombreProveedorE);
                    proveedores.setTelefonoProveedor(telefonoProveedorE);
                    proveedores.setCorreoProveedor(correoProveedorE);
                    proveedores.setDireccionProveedor(direccionProveedorE);

                    int filas = proveedoresDAO.actualizar(proveedores);
                    System.out.println("Filas actualizadas: " + filas);

                    if (filas > 0) {
                        request.setAttribute("mensaje", "Proveedor actualizado exitosamente");
                    } else {
                        request.setAttribute("error", "No se pudo actualizar el proveedor");
                    }
                    request.setAttribute("proveedores", proveedoresDAO.listar());
                    break;
                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigo = Integer.parseInt(idEliminar);
                            int resultado = proveedoresDAO.eliminar(codigo);

                            if (resultado > 0) {
                                request.setAttribute("mensaje", "Proveedor eliminado exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar el Proveedor");
                            }

                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de Proveedor inválido");
                        }
                        response.sendRedirect("Controlador?menu=Proveedor&accion=Listar");
                        return;
                    }
                    break;
                default:
                    System.out.println("No se encontro");
            }
            request.getRequestDispatcher("/Index/vistaproveedoradmin.jsp").forward(request, response);
        } else if (menu.equals("Producto")) {
            Productos productos = new Productos();
            ProductosDAO productosDAO = new ProductosDAO();
            switch (accion) {

                case "Listar":
                    List listaProductos = productosDAO.listar();
                    request.setAttribute("productos", listaProductos);
                    break;
                case "Buscar":
                    String codigoProducto = request.getParameter("txtBuscarId");
                    List<Productos> listaProductoBuscado = new ArrayList<>();
                    if (codigoProducto != null && !codigoProducto.trim().isEmpty()) {
                        try {
                            int codigoP = Integer.parseInt(codigoProducto);
                            Productos productoEncontrado = productosDAO.buscar(codigoP);

                            if (productoEncontrado != null) {
                                listaProductoBuscado.add(productoEncontrado);
                            } else {
                                request.setAttribute("error", "Producto no encontrada");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID del producto inválido");
                        }
                    } else {
                        listaProductoBuscado = productosDAO.listar();
                    }

                    request.setAttribute("productos", listaProductoBuscado);
                    request.getRequestDispatcher("/Index/vistaproductoadmin.jsp").forward(request, response);

                    break;
                case "Agregar":
                    String NombreProducto = request.getParameter("txtNombreProducto");
                    String DescripcionProducto = request.getParameter("txtDescripcion");
                    String PrecioProducto = request.getParameter("txtPrecio");
                    double PrecioProductoC = Double.parseDouble(PrecioProducto);
                    String TallaProducto = request.getParameter("txtTalla");
                    String StockProducto = request.getParameter("txtStock");
                    int StockProductoC = Integer.parseInt(StockProducto);
                    String CodigoProveedor = request.getParameter("txtCodigoProveedor");
                    int CodigoProveedorC = Integer.parseInt(CodigoProveedor);
                    String CodigoCategoria = request.getParameter("txtCodigoCategoria");
                    int CodigoCategoriaC = Integer.parseInt(CodigoCategoria);
                    productos.setNombreProducto(NombreProducto);
                    productos.setDescripcionProducto(DescripcionProducto);
                    productos.setPrecioProducto(PrecioProductoC);
                    productos.setTalla(TallaProducto);
                    productos.setStock(StockProductoC);
                    productos.setCodigoProveedor(CodigoProveedorC);
                    productos.setCodigoCategoria(CodigoCategoriaC);
                    productosDAO.agregar(productos);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);

                    break;

                case "Editar":
                    /*Realizamos nuestro casteo a int porque solo lo guarda como String*/ int idEditar = Integer.parseInt(request.getParameter("id"));
                    /*Llamamos a la clase producto y creamos una variable producto editar luego llamamos el dao para poder traer el metodo buscar y que nos pueda buscar el id*/
                    Productos productoEditar = productosDAO.buscar(idEditar);
                    /*despues de guardar la entidad dentro de productoEditar ahora se guarda bajo el nombre de producto*/
 /* y lo que guardamos com producto lo mando a llamar en mi jsp para que me mande a traer mis datos y mostrarlos en los formularios*/ request.setAttribute("producto", productoEditar);
                    /* solo lista todo otra vez para que se muestren en la tabla*/
                    request.setAttribute("productos", productosDAO.listar());
                    request.getRequestDispatcher("/Index/vistaproductoadmin.jsp").forward(request, response);
                    break;

                case "Actualizar":
                    /*hacmos lo mismo del ingresar porque tenemos que volver a cargar los datos a nuestro regsitro y como ya tenemos guardado el id*/
                    int codigo = Integer.parseInt(request.getParameter("txtCodigoProducto"));
                    String nuevoNombre = request.getParameter("txtNombreProducto");
                    String nuevaDescripcion = request.getParameter("txtDescripcion");
                    double nuevoPrecio = Double.parseDouble(request.getParameter("txtPrecio"));
                    String nuevaTtalla = request.getParameter("txtTalla");
                    int nuevoStock = Integer.parseInt(request.getParameter("txtStock"));
                    int nuevoCodProv = Integer.parseInt(request.getParameter("txtCodigoProveedor"));
                    int nuevoCodCat = Integer.parseInt(request.getParameter("txtCodigoCategoria"));

                    /*Seteamos los nuevos valores para poder guradarlos en productos*/
                    productos.setCodigoProducto(codigo);
                    productos.setNombreProducto(nuevoNombre);
                    productos.setDescripcionProducto(nuevaDescripcion);
                    productos.setPrecioProducto(nuevoPrecio);
                    productos.setTalla(nuevaTtalla);
                    productos.setStock(nuevoStock);
                    productos.setCodigoProveedor(nuevoCodProv);
                    productos.setCodigoCategoria(nuevoCodCat);

                    /* llamamos al metodo actualizar del dao para as obtener el total de filas que se afectaron el la base de datos*/
                    int filas = productosDAO.actualizar(productos);

                    /* en la consola se muestra cuales fueran las filas afectas*/
                    System.out.println("Filas actualizadas: " + filas);

                    // Volver a cargar la lista
                    request.setAttribute("productos", productosDAO.listar());
                    request.getRequestDispatcher("/Index/vistaproductoadmin.jsp").forward(request, response);
                    break;
                case "Eliminar":
                    String idEliminar = request.getParameter("id");
                    if (idEliminar != null && !idEliminar.trim().isEmpty()) {
                        try {
                            int codigoEliminar = Integer.parseInt(idEliminar);

                            int resultado = productosDAO.eliminar(codigoEliminar);

                            if (resultado > 0) {
                                request.setAttribute("mensaje", "Producto eliminado exitosamente");
                            } else {
                                request.setAttribute("error", "Error al eliminar el producto");
                            }
                        } catch (NumberFormatException e) {
                            request.setAttribute("error", "ID de producto inválido");
                        }

                        response.sendRedirect("Controlador?menu=Producto&accion=Listar");
                        return;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("/Index/vistaproductoadmin.jsp").forward(request, response);
        } else if (menu.equals("VistaAdmin")) {
            request.getRequestDispatcher("Index/vistaadmin.jsp").forward(request, response);
        }
    }
// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (ParseException ex) {
            Logger.getLogger(Controlador.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (ParseException ex) {
            Logger.getLogger(Controlador.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
