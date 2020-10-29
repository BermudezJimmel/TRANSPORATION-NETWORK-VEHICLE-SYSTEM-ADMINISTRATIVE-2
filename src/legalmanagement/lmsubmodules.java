/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package legalmanagement;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;

/**
 *
 * @author jimmelbermudez7
 */
public class lmsubmodules extends javax.swing.JPanel {
GridBagLayout layout=new GridBagLayout();
     complaints l1;
     legalcases l2;
     legaldocuments l3;
     legalreports l4;
     LM l5;
   
    /**
     * Creates new form legalsubmodules
     */
    public lmsubmodules() {
        initComponents();
        l1=new complaints();
        l2=new legalcases();
        l3=new legaldocuments();
        l4=new legalreports();
        l5=new LM();
        main.setLayout(layout);
        GridBagConstraints a=new GridBagConstraints();
        a.gridx=0;
        a.gridy=0;
        main.add(l1,a);
        main.add(l2,a);
        main.add(l3,a);
        main.add(l4,a);
        main.add(l5,a);
         l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(false);
         l5.setVisible(true);
         
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        legalcases = new javax.swing.JButton();
        ldocument = new javax.swing.JButton();
        reports = new javax.swing.JButton();
        complains = new javax.swing.JButton();
        main = new javax.swing.JPanel();
        reports1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 102));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(108, 192, 240));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        legalcases.setBackground(new java.awt.Color(0, 204, 255));
        legalcases.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        legalcases.setText("Cases");
        legalcases.setToolTipText("");
        legalcases.setBorder(null);
        legalcases.setContentAreaFilled(false);
        legalcases.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        legalcases.setOpaque(true);
        legalcases.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                legalcasesMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                legalcasesMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                legalcasesMouseExited(evt);
            }
        });
        legalcases.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                legalcasesActionPerformed(evt);
            }
        });
        jPanel1.add(legalcases, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 10, 200, 30));

        ldocument.setBackground(new java.awt.Color(0, 204, 255));
        ldocument.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        ldocument.setText("Legal Documents");
        ldocument.setToolTipText("");
        ldocument.setBorder(null);
        ldocument.setContentAreaFilled(false);
        ldocument.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        ldocument.setOpaque(true);
        ldocument.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ldocumentMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                ldocumentMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                ldocumentMouseExited(evt);
            }
        });
        ldocument.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ldocumentActionPerformed(evt);
            }
        });
        jPanel1.add(ldocument, new org.netbeans.lib.awtextra.AbsoluteConstraints(490, 10, 200, 30));

        reports.setBackground(new java.awt.Color(0, 204, 255));
        reports.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        reports.setText("Reports");
        reports.setToolTipText("");
        reports.setBorder(null);
        reports.setContentAreaFilled(false);
        reports.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        reports.setOpaque(true);
        reports.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                reportsMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                reportsMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                reportsMouseExited(evt);
            }
        });
        reports.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                reportsActionPerformed(evt);
            }
        });
        jPanel1.add(reports, new org.netbeans.lib.awtextra.AbsoluteConstraints(700, 10, 200, 30));

        complains.setBackground(new java.awt.Color(0, 204, 255));
        complains.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        complains.setText("File");
        complains.setToolTipText("");
        complains.setBorder(null);
        complains.setContentAreaFilled(false);
        complains.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        complains.setOpaque(true);
        complains.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                complainsMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                complainsMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                complainsMouseExited(evt);
            }
        });
        complains.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                complainsActionPerformed(evt);
            }
        });
        jPanel1.add(complains, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 10, 200, 30));

        main.setBackground(new java.awt.Color(108, 192, 240));
        main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jPanel1.add(main, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 40, 1220, 580));

        reports1.setBackground(new java.awt.Color(0, 204, 255));
        reports1.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        reports1.setText("D");
        reports1.setToolTipText("");
        reports1.setBorder(null);
        reports1.setContentAreaFilled(false);
        reports1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        reports1.setOpaque(true);
        reports1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                reports1MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                reports1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                reports1MouseExited(evt);
            }
        });
        reports1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                reports1ActionPerformed(evt);
            }
        });
        jPanel1.add(reports1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 50, 30));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1220, 620));
    }// </editor-fold>//GEN-END:initComponents

    private void legalcasesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalcasesMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_legalcasesMouseClicked

    private void legalcasesMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalcasesMouseEntered

 
        // TODO add your handling code here:
    }//GEN-LAST:event_legalcasesMouseEntered

    private void legalcasesMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_legalcasesMouseExited


        // TODO add your handling code here:
    }//GEN-LAST:event_legalcasesMouseExited

    private void legalcasesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_legalcasesActionPerformed
reports1.setForeground(new java.awt.Color(000,000,000));
complains.setForeground(new java.awt.Color(000,000,000));
legalcases.setForeground(new java.awt.Color(255,255,255));
ldocument.setForeground(new java.awt.Color(000,000,000));
reports.setForeground(new java.awt.Color(000,000,000));
        l5.setVisible(false);l1.setVisible(false);
         l2.setVisible(true);
         l3.setVisible(false);
         l4.setVisible(false);
         
        // TODO add your handling code here:
    }//GEN-LAST:event_legalcasesActionPerformed

    private void ldocumentMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ldocumentMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_ldocumentMouseClicked

    private void ldocumentMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ldocumentMouseEntered
      // TODO add your handling code here:
    }//GEN-LAST:event_ldocumentMouseEntered

    private void ldocumentMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ldocumentMouseExited
          // TODO add your handling code here:
    }//GEN-LAST:event_ldocumentMouseExited

    private void ldocumentActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ldocumentActionPerformed
reports1.setForeground(new java.awt.Color(000,000,000));
complains.setForeground(new java.awt.Color(000,000,000));
legalcases.setForeground(new java.awt.Color(000,000,000));
ldocument.setForeground(new java.awt.Color(255,255,255));
reports.setForeground(new java.awt.Color(000,000,000));
        l5.setVisible(false);
        l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(true);
         l4.setVisible(false);
                 // TODO add your handling code here:
    }//GEN-LAST:event_ldocumentActionPerformed

    private void reportsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reportsMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_reportsMouseClicked

    private void reportsMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reportsMouseEntered
         // TODO add your handling code here:
    }//GEN-LAST:event_reportsMouseEntered

    private void reportsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reportsMouseExited
       // TODO add your handling code here:
    }//GEN-LAST:event_reportsMouseExited

    private void reportsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_reportsActionPerformed
reports1.setForeground(new java.awt.Color(000,000,000));
complains.setForeground(new java.awt.Color(000,000,000));
legalcases.setForeground(new java.awt.Color(000,000,000));
ldocument.setForeground(new java.awt.Color(000,000,000));
reports.setForeground(new java.awt.Color(255,255,255));
        l5.setVisible(false);
        l1.setVisible(false);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(true);
                 // TODO add your handling code here:
    }//GEN-LAST:event_reportsActionPerformed

    private void complainsMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_complainsMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_complainsMouseClicked

    private void complainsMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_complainsMouseEntered
       // TODO add your handling code here:
    }//GEN-LAST:event_complainsMouseEntered

    private void complainsMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_complainsMouseExited
       // TODO add your handling code here:
    }//GEN-LAST:event_complainsMouseExited

    private void complainsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_complainsActionPerformed
reports1.setForeground(new java.awt.Color(000,000,000));
complains.setForeground(new java.awt.Color(255,255,255));
legalcases.setForeground(new java.awt.Color(000,000,000));
ldocument.setForeground(new java.awt.Color(000,000,000));
reports.setForeground(new java.awt.Color(000,000,000));
        l1.setVisible(true);
         l2.setVisible(false);
         l3.setVisible(false);
         l4.setVisible(false);
         l5.setVisible(false);
                 // TODO add your handling code here:
    }//GEN-LAST:event_complainsActionPerformed

    private void reports1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reports1MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_reports1MouseClicked

    private void reports1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reports1MouseEntered
            // TODO add your handling code here:
    }//GEN-LAST:event_reports1MouseEntered

    private void reports1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_reports1MouseExited
         // TODO add your handling code here:
    }//GEN-LAST:event_reports1MouseExited

    private void reports1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_reports1ActionPerformed
reports1.setForeground(new java.awt.Color(255,255,255));
complains.setForeground(new java.awt.Color(000,000,000));
legalcases.setForeground(new java.awt.Color(000,000,000));
ldocument.setForeground(new java.awt.Color(000,000,000));
reports.setForeground(new java.awt.Color(000,000,000));

        l1.setVisible(false);
        l2.setVisible(false);
        l3.setVisible(false);
        l4.setVisible(false);
        l5.setVisible(true);       // TODO add your handling code here:
    }//GEN-LAST:event_reports1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton complains;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JButton ldocument;
    private javax.swing.JButton legalcases;
    private javax.swing.JPanel main;
    private javax.swing.JButton reports;
    private javax.swing.JButton reports1;
    // End of variables declaration//GEN-END:variables
}
