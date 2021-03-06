/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package form_cetak;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.swing.JRViewer;
/**
 *
 
 */
public class Form_2_Cetak_Pengembalian extends javax.swing.JDialog {
    public static String public_tanggal = "";
    
    /**
     * Creates new form Form_2_Cetak_Siswa
     */
    public Form_2_Cetak_Pengembalian(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        tf_batas_awal = new com.toedter.calendar.JDateChooser();
        tf_batas_akhir = new com.toedter.calendar.JDateChooser();
        cetak = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Cetak Pengembalian");
        setAlwaysOnTop(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel11.setText("Batas Awal");
        getContentPane().add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 26, -1, -1));

        jLabel12.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel12.setText("Batas Akhir");
        getContentPane().add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 67, -1, -1));

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel13.setText(":");
        getContentPane().add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(95, 67, -1, -1));

        jLabel14.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel14.setText(":");
        getContentPane().add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(95, 26, -1, -1));

        tf_batas_awal.setDateFormatString("dd-MM-yyyy");
        tf_batas_awal.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N
        getContentPane().add(tf_batas_awal, new org.netbeans.lib.awtextra.AbsoluteConstraints(106, 18, 176, 35));

        tf_batas_akhir.setDateFormatString("dd-MM-yyyy");
        tf_batas_akhir.setFont(new java.awt.Font("Tahoma", 0, 13)); // NOI18N
        getContentPane().add(tf_batas_akhir, new org.netbeans.lib.awtextra.AbsoluteConstraints(106, 58, 176, 35));

        cetak.setText("Cetak");
        cetak.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        cetak.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cetakActionPerformed(evt);
            }
        });
        getContentPane().add(cetak, new org.netbeans.lib.awtextra.AbsoluteConstraints(288, 18, 72, 75));

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/gambar/Form_Cetak2.jpg"))); // NOI18N
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void cetakActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cetakActionPerformed
        try {
            String NamaFile = "src/laporan/Laporan_4_Pengembalian.jasper";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/si_perpus","root","");
            HashMap hash = new HashMap();
            File file = new File(NamaFile);
            //Mengambil parameter dari ireport
            hash.put("batas_awal", tf_batas_awal.getDate());
            hash.put("batas_akhir", tf_batas_akhir.getDate());
            JasperReport jasperReport = (JasperReport) JRLoader.loadObject(file.getPath());
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, hash, koneksi);
            JRViewer aViewer = new JRViewer(jasperPrint);
            JDialog viewer = new JDialog();
            viewer.setTitle(".: Jasper Report :.");
            //viewer.setAlwaysOnTop(true);
            viewer.getContentPane().add(aViewer);
            Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
            viewer.setBounds(0,0,screenSize.width, screenSize.height);
            this.dispose();
            viewer.setVisible(true);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Terjadi Error Cetak "+e);
        }
    }//GEN-LAST:event_cetakActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Form_2_Cetak_Pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Form_2_Cetak_Pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Form_2_Cetak_Pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Form_2_Cetak_Pengembalian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Form_2_Cetak_Pengembalian dialog = new Form_2_Cetak_Pengembalian(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton cetak;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private com.toedter.calendar.JDateChooser tf_batas_akhir;
    private com.toedter.calendar.JDateChooser tf_batas_awal;
    // End of variables declaration//GEN-END:variables
        
}
