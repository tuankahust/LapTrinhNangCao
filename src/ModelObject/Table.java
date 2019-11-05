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
public class Table
{
    public int TableID;
    public Product[] ListOfProduct;
    public int[] ListOfNumber; 
    public Table(int ID, Product[] ListProduct, int[] ListNumber)
    {
        TableID = ID;
        ListOfProduct = ListProduct;
        ListOfNumber = ListNumber;
    }
    public int CalculateBill()
    {
        int sum;
        sum = 0;
        for(int i = 0; i < ListOfNumber.length; i++)
        {
            if (ListOfNumber[i] > 0) sum = sum + ListOfProduct[i].ProductPrice * ListOfNumber[i];
        }
        return sum;
    }
    
}
