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
public class complaintscomplain extends javax.swing.JPanel {
GridBagLayout layout=new GridBagLayout();
complaintsemployeetoemp a3;
complaintscostumertoemp a2;
complaintsemployeetodriver a4;
complaintscustumertodriver a1;
    /**
     * Creates new form complain
     */
    public complaintscomplain() {
        initComponents();
        a1=new complaintscustumertodriver();
        a2=new complaintscostumertoemp();
        a3=new complaintsemployeetoemp();
        a4=new complaintsemployeetodriver();
        main.setLayout(layout);
        GridBagConstraints c=new GridBagConstraints();
        c.gridx=0;
        c.gridy=0;
        main.add(a1,c);
        main.add(a2,c);
        main.add(a3,c);
        main.add(a4,c);
        
        a1.setVisible(false);
        a2.setVisible(false);
        a3.setVisible(false);
        a4.setVisible(false);
    }
    public void comboselect(){
    int tmp =jComboBox1.getSelectedIndex();
        if(tmp==0){
        a1.setVisible(true);
        a2.setVisible(false);
        a3.setVisible(false);
        a4.setVisible(false);
        }
        if(tmp==1){
        a1.setVisible(false);
        a2.setVisible(true);
        a3.setVisible(false);
        a4.setVisible(false);   
        } 
        if(tmp==2){
        a1.setVisible(false);
        a2.setVisible(false);
        a3.setVisible(true);
        a4.setVisible(false);    
        } 
        if(tmp==3){
        a1.setVisible(false);
        a2.setVisible(false);
        a3.setVisible(false);
        a4.setVisible(true);    
        } 
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
        jComboBox1 = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        main = new javax.swing.JPanel();

        setBackground(new java.awt.Color(108, 192, 240));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(108, 192, 240));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jComboBox1.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "COSTUMER TO TAXI DRIVER", "CUSTOMER TO EMPLOYEE", "EMPLOYEE TO EMPLOYEE", "EMPLOYEE TO TAXI DRIVER", " " }));
        jComboBox1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBox1ActionPerformed(evt);
            }
        });
        jPanel1.add(jComboBox1, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 0, 290, 30));

        jLabel1.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jLabel1.setText("COMPLAIN TYPE:");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 120, 30));

        main.setBackground(new java.awt.Color(108, 192, 240));
        main.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jPanel1.add(main, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 30, 1220, 520));

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1220, 550));
    }// </editor-fold>//GEN-END:initComponents

    private void jComboBox1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBox1ActionPerformed
        comboselect();// TODO add your handling code here:
    }//GEN-LAST:event_jComboBox1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel main;
    // End of variables declaration//GEN-END:variables
}
