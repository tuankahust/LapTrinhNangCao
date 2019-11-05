/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelObject;

/**
 *
 * @author hieupt
 */
public class Product
{
    public int ProductID;
    public String ProductName;
    public int ProductPrice;
    public Product(int ID, String Name, int Price)
    {
        ProductID = ID;
        ProductName = Name;
        ProductPrice = Price;
    }
}
