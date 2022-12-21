import javax.swing.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int a, b;
        String p, n, m;
        String p1, p2;
        Scanner input = new Scanner(System.in);

        m = JOptionPane.showInputDialog("Masukan Nama : ");
        n = JOptionPane.showInputDialog("Masukan Nim : ");
        if (m.equals("Rifal") && n.equals("115")) {
            Kalkulator kal = new Kalkulator();
            JOptionPane.showMessageDialog(null,"Selamat datang kembali Tuan "+m);
            JOptionPane.showMessageDialog(null,"Program akan berhenti pada operasi terakhir dengan ketentuan nilai a ataupun b di isi dengan 999");
            JOptionPane.showMessageDialog(null,"Ket Operator : +  -  *  /  %  ^ ");
            do {
                p1 = JOptionPane.showInputDialog("Masukan bilangan 1 : ");
                a = Integer.parseInt(p1);
                kal.setTambah(a);
                p = JOptionPane.showInputDialog("Masukan Operator : ");
                kal.setOperator(p);
                p2 = JOptionPane.showInputDialog("Masukan Bilangan 2 : ");
                b = Integer.parseInt(p2);
                kal.setTambah2(b);
                switch (p) {
                    case "+":
                        JOptionPane.showMessageDialog(null,"Hasilnya adalah "+kal.tambah());
                        break;
                    case "-":
                        JOptionPane.showMessageDialog(null,"Hasilnya adalah "+kal.kurang());
                        break;
                    case "/":
                        JOptionPane.showMessageDialog(null,"Hasilnya Adalah "+kal.bagi());
                        break;
                    case "*":
                        JOptionPane.showMessageDialog(null,"Hasilnya adalah "+kal.kali());
                        break;
                    case "%":
                        JOptionPane.showMessageDialog(null,"Hasilnya adalah "+kal.modulus());
                        break;
                    case "^":
                        JOptionPane.showMessageDialog(null,"Hasilnya Adalah "+kal.pangkat());
                        break;
                    default:
                        JOptionPane.showMessageDialog(null,"Operator yang anda masukan salah");
                }
            }while (a != 999 && b != 999);
            JOptionPane.showMessageDialog(null,"Terimakasih");
        }else{
            JOptionPane.showMessageDialog(null,"Nama atau Nim kurang tepat");
        }
    }
}
