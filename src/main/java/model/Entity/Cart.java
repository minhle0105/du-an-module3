package model.Entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private int cartId;
    private double shipFee;
    private double totalAmount;
    List<Product> productList = new ArrayList<>();

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public double getShipFee() {
        return shipFee;
    }

    public void setShipFee(double shipFee) {
        this.shipFee = shipFee;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Cart(int cartId, double shipFee, double totalAmount) {
        this.cartId = cartId;
        this.shipFee = shipFee;
        this.totalAmount = totalAmount;
    }

    public Cart() {
    }
}
