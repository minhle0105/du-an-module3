package model.Service.Product;
import model.Entity.Product;
import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    void insertProduct(Product product) throws SQLException;
    Product selectProductById(int id) throws SQLException;
    List<Product> selectAllProduct() throws SQLException;
    boolean deleteProduct(int id) throws SQLException;
    boolean updateProduct(Product product,int id) throws SQLException;
    List<Product> sortedProductByName() throws SQLException;
}
