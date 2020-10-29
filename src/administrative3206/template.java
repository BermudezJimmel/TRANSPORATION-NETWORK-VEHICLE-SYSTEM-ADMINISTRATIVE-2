/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package administrative3206;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import documentmanagement.dmsubmodules;
import facilityreservation.frsubmodules;
import static java.lang.Thread.sleep;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;
import static javax.swing.JOptionPane.showConfirmDialog;
import legalmanagement.lmsubmodules;
import visitormanagement.vmsubmodules;

/**
 *
 * @author jimmelbermudez7
 */
public final class template extends javax.swing.JFrame {
   GridBagLayout layout=new GridBagLayout();
     lmsubmodules l1;
     dmsubmodules l2;
     frsubmodules l3;
     vmsubmodules l4;
    private Object StartGUI;
    
     
    /**
     * Creates new form template
     */
    public template() {
        initComponents();
        TimeDate();
        
        
        l1=new lmsubmodules();
        l2=new dmsubmodules();
        l3=new frsubmodules();
        l4=new vmsubmodules();
        
        
        home10.setLayout(layout);
        GridBagConstraints c=new GridBagConstraints();
        c.gridx=0;
        c.gridy=0;
        home10.add(l1,c);
        home10.add(l2,c);
        home10.add(l3,c);
        home10.add(l4,c);
        
         l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(false);
         
        
    }

    
public void TimeDate(){
    Thread clock= new Thread(){
    public void run(){
    for(;;){
    Calendar calen = GregorianCalendar.getInstance();
    int AM_PM = calen.get(Calendar.AM_PM);

    String tpattern = "hh:mm";
                    SimpleDateFormat tsdf = new SimpleDateFormat(tpattern);
                    timelab.setText(tsdf.format(new java.util.Date()));
                    
    String [] days = new String [] {"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
    String day_night = "";
            if (AM_PM==1)
            {day_night ="PM";}
            else
            {day_night = "AM";}
            
  //  time1.setText(hour+":"+mins+":"+secs); 
    ps.setText(day_night);



int mons = calen.get(Calendar.MONTH);
int day = calen.get(Calendar.DAY_OF_MONTH);
int yr = calen.get(Calendar.YEAR);
datelab.setText(days[calen.get(Calendar.DAY_OF_WEEK)-1]+" "+(mons+1)+"-"+day+"-"+yr);    
    try {
        sleep(1000);
    } catch (InterruptedException ex) {
        
    }
} } };

clock.start();
}

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDialog1 = new javax.swing.JDialog();
        jPanel3 = new javax.swing.JPanel();
        TIMETIME = new javax.swing.JPanel();
        datelab = new javax.swing.JLabel();
        timelab = new javax.swing.JLabel();
        ps = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        name = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        legalbtn = new javax.swing.JButton();
        documentbtn = new javax.swing.JButton();
        facilitybtn = new javax.swing.JButton();
        visitorbtn = new javax.swing.JButton();
        home10 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();

        jDialog1.setModalityType(java.awt.Dialog.ModalityType.TOOLKIT_MODAL);

        jPanel3.setBackground(new java.awt.Color(153, 255, 153));
        jPanel3.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                jPanel3AncestorAdded(evt);
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        jDialog1.getContentPane().add(jPanel3, java.awt.BorderLayout.CENTER);

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        TIMETIME.setBackground(new java.awt.Color(0, 51, 51));
        TIMETIME.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        TIMETIME.add(datelab, new org.netbeans.lib.awtextra.AbsoluteConstraints(1040, 0, 130, 40));
        TIMETIME.add(timelab, new org.netbeans.lib.awtextra.AbsoluteConstraints(1180, 0, 70, 40));
        TIMETIME.add(ps, new org.netbeans.lib.awtextra.AbsoluteConstraints(1250, 0, 30, 40));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel4.setText("User:");
        jLabel4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel4MouseClicked(evt);
            }
        });
        TIMETIME.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 0, 60, 50));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel5.setText("ADMINISTRATIVE");
        jLabel5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel5MouseClicked(evt);
            }
        });
        TIMETIME.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 0, 240, 50));

        name.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        name.setText("User:");
        name.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                nameMouseClicked(evt);
            }
        });
        TIMETIME.add(name, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 0, 230, 50));

        getContentPane().add(TIMETIME, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 720, 1290, 50));

        jPanel1.setBackground(new java.awt.Color(108, 192, 240));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        legalbtn.setBackground(new java.awt.Color(108, 192, 240));
        legalbtn.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        legalbtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/administrative3206/legalmanagement.png"))); // NOI18N
        legalbtn.setToolTipText("LEGAL MANAGEMENT");
        legalbtn.setBorder(null);
        legalbtn.setContentAreaFilled(false);
        legalbtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        legalbtn.setOpaque(true);
        legalbtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                legalbtnMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                legalbtnMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                legalbtnMouseExited(evt);
            }
        });
        legalbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                legalbtnActionPerformed(evt);
            }
        });
        jPanel1.add(legalbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 100, 60, 60));

        documentbtn.setBackground(new java.awt.Color(108, 192, 240));
        documentbtn.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        documentbtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/administrative3206/documentmanagement.png"))); // NOI18N
        documentbtn.setToolTipText("DOCUMENT MANAGEMENT");
        documentbtn.setBorder(null);
        documentbtn.setContentAreaFilled(false);
        documentbtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        documentbtn.setOpaque(true);
        documentbtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                documentbtnMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                documentbtnMouseExited(evt);
            }
        });
        documentbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                documentbtnActionPerformed(evt);
            }
        });
        jPanel1.add(documentbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 160, 60, 60));

        facilitybtn.setBackground(new java.awt.Color(108, 192, 240));
        facilitybtn.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        facilitybtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/administrative3206/facilityreservation.png"))); // NOI18N
        facilitybtn.setToolTipText("FACILITY RESEVATION");
        facilitybtn.setBorder(null);
        facilitybtn.setContentAreaFilled(false);
        facilitybtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        facilitybtn.setOpaque(true);
        facilitybtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                facilitybtnMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                facilitybtnMouseExited(evt);
            }
        });
        facilitybtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                facilitybtnActionPerformed(evt);
            }
        });
        jPanel1.add(facilitybtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 220, 60, 60));

        visitorbtn.setBackground(new java.awt.Color(108, 192, 240));
        visitorbtn.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        visitorbtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/administrative3206/visitor management.png"))); // NOI18N
        visitorbtn.setToolTipText("VISITOR MANAGEMENT");
        visitorbtn.setBorder(null);
        visitorbtn.setContentAreaFilled(false);
        visitorbtn.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        visitorbtn.setOpaque(true);
        visitorbtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                visitorbtnMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                visitorbtnMouseExited(evt);
            }
        });
        visitorbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                visitorbtnActionPerformed(evt);
            }
        });
        jPanel1.add(visitorbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 280, 60, 60));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 60, 720));

        home10.setBackground(new java.awt.Color(108, 192, 240));
        home10.setMaximumSize(new java.awt.Dimension(1280, 720));
        home10.setMinimumSize(new java.awt.Dimension(1280, 720));
        home10.setPreferredSize(new java.awt.Dimension(1220, 620));
        home10.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        getContentPane().add(home10, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 100, 1220, 620));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel2.setText("  -");
        jLabel2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel2MouseClicked(evt);
            }
        });
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(1210, 0, 30, 30));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("    X");
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabel1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabel1MouseExited(evt);
            }
        });
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(1240, 0, 40, 30));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/administrative3206/head_banner1.jpg"))); // NOI18N
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 0, 1130, 100));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void legalbtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalbtnMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_legalbtnMouseClicked

    private void legalbtnMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalbtnMouseEntered

        legalbtn.setForeground(new java.awt.Color(255,255,255));
     // TODO add your handling code here:
    }//GEN-LAST:event_legalbtnMouseEntered

    private void legalbtnMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalbtnMouseExited
        legalbtn.setForeground(new java.awt.Color(0,0,0));
        
// TODO add your handling code here:
    }//GEN-LAST:event_legalbtnMouseExited

    private void legalbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_legalbtnActionPerformed

         l1.setVisible(true);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(false);   
        // TODO add your handling code here:
    }//GEN-LAST:event_legalbtnActionPerformed

    private void documentbtnMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_documentbtnMouseEntered
        documentbtn.setForeground(new java.awt.Color(255,255,255));
       
        // TODO add your handling code here:
    }//GEN-LAST:event_documentbtnMouseEntered

    private void documentbtnMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_documentbtnMouseExited
        documentbtn.setForeground(new java.awt.Color(0,0,0));
        
      // TODO add your handling code here:
    }//GEN-LAST:event_documentbtnMouseExited

    private void documentbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_documentbtnActionPerformed
l1.setVisible(false);
         l2.setVisible(true);
         l3.setVisible(false);
         l4.setVisible(false);             // TODO add your handling code here:
    }//GEN-LAST:event_documentbtnActionPerformed

    private void facilitybtnMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_facilitybtnMouseEntered
        facilitybtn.setForeground(new java.awt.Color(255,255,255));
    
        // TODO add your handling code here:
    }//GEN-LAST:event_facilitybtnMouseEntered

    private void facilitybtnMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_facilitybtnMouseExited
        facilitybtn.setForeground(new java.awt.Color(0,0,0));
       
                // TODO add your handling code here:
    }//GEN-LAST:event_facilitybtnMouseExited

    private void facilitybtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_facilitybtnActionPerformed
l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(true);
         l4.setVisible(false);             // TODO add your handling code here:
    }//GEN-LAST:event_facilitybtnActionPerformed

    private void visitorbtnMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_visitorbtnMouseEntered
        visitorbtn.setForeground(new java.awt.Color(255,255,255));
     
        // TODO add your handling code here:
    }//GEN-LAST:event_visitorbtnMouseEntered

    private void visitorbtnMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_visitorbtnMouseExited
        visitorbtn.setForeground(new java.awt.Color(0,0,0));
        
               // TODO add your handling code here:
    }//GEN-LAST:event_visitorbtnMouseExited

    private void visitorbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_visitorbtnActionPerformed
            l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(true);  
         // TODO add your handling code here:
    }//GEN-LAST:event_visitorbtnActionPerformed

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
int h = showConfirmDialog(null,"Are you sure you want to Log Out?","CLOSE",JOptionPane.YES_NO_OPTION);
       if (h==0)
       {
           NewJFramelogin login= new NewJFramelogin();
           login.setVisible(true);
           dispose();
       }
       if(h==1)
       {
           
       }
// TODO add your handling code here:
    }//GEN-LAST:event_jLabel1MouseClicked

    private void jLabel1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseEntered
jLabel1.setForeground(new java.awt.Color(255,255,255));
// TODO add your handling code here:
    }//GEN-LAST:event_jLabel1MouseEntered

    private void jLabel1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseExited
jLabel1.setForeground(new java.awt.Color(0,0,0));        // TODO add your handling code here:
    }//GEN-LAST:event_jLabel1MouseExited

    private void jLabel4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel4MouseClicked
 jDialog1.setVisible(true);
//this.dispose();// TODO add your handling code here:
    }//GEN-LAST:event_jLabel4MouseClicked

    private void jPanel3AncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_jPanel3AncestorAdded
 jDialog1.setBounds(0,500,390,420);        // TODO add your handling code here:
    }//GEN-LAST:event_jPanel3AncestorAdded

    private void jLabel5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel5MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_jLabel5MouseClicked

    private void nameMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_nameMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_nameMouseClicked

    private void jLabel2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel2MouseClicked
        /*this.setState(StartGUI.ICONIFIED); */      // TODO add your handling code here:
    }//GEN-LAST:event_jLabel2MouseClicked

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
            java.util.logging.Logger.getLogger(template.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(template.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(template.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(template.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new template().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel TIMETIME;
    private javax.swing.JLabel datelab;
    private javax.swing.JButton documentbtn;
    private javax.swing.JButton facilitybtn;
    private javax.swing.JPanel home10;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JButton legalbtn;
    private javax.swing.JLabel name;
    private javax.swing.JLabel ps;
    private javax.swing.JLabel timelab;
    private javax.swing.JButton visitorbtn;
    // End of variables declaration//GEN-END:variables
}