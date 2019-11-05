/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fastfood;

/**
 *
 * @author hieupt
 */
class hoadon
{
    private String ten;
    private int soluong;
    private int gia;
    public hoadon(String ten, int soluong, int gia)
    {
        this.ten = ten;
        this.soluong = soluong;
        this.gia = gia;
    }
    public String getten()
    {
        return ten;
    }
    public int getsoluong()
    {
        return soluong;
    }
    public int getgia()
    {
        return gia;
    }
}
