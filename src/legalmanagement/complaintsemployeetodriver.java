/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package legalmanagement;

import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

/**
 *
 * @author Jimmel Bermudez
 */
public class complaintsemployeetodriver extends javax.swing.JPanel {
Connection conn = null;
ResultSet rs = null;
PreparedStatement pst = null; 
    /**
     * Creates new form complaintsemployeetodriver
     */
    public complaintsemployeetodriver() {
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

        jDialog1 = new javax.swing.JDialog();
        jPanel4 = new javax.swing.JPanel();
        jButton6 = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        complain = new javax.swing.JTextArea();
        jLabel8 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        mi = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        fname = new javax.swing.JTextField();
        lname = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        Id = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        contact = new javax.swing.JTextField();
        email = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        Customer = new javax.swing.JLabel();
        jLabel25 = new javax.swing.JLabel();
        date = new javax.swing.JLabel();
        jDesktopPane1 = new javax.swing.JDesktopPane();
        image = new javax.swing.JLabel();
        jLabel29 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl = new javax.swing.JTable();
        jLabel5 = new javax.swing.JLabel();
        search = new javax.swing.JTextField();
        jLabel22 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        type = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        Id2 = new javax.swing.JTextField();
        lname2 = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        fname2 = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        mi2 = new javax.swing.JTextField();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jDesktopPane2 = new javax.swing.JDesktopPane();
        department = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        search1 = new javax.swing.JTextField();
        jScrollPane2 = new javax.swing.JScrollPane();
        tbl1 = new javax.swing.JTable();
        jLabel14 = new javax.swing.JLabel();

        jPanel4.setBackground(new java.awt.Color(108, 192, 240));
        jPanel4.setPreferredSize(new java.awt.Dimension(925, 500));
        jPanel4.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                jPanel4AncestorAdded(evt);
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        jPanel4.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButton6.setBackground(new java.awt.Color(0, 102, 204));
        jButton6.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jButton6.setForeground(new java.awt.Color(255, 255, 255));
        jButton6.setText("SAVE");
        jButton6.setContentAreaFilled(false);
        jButton6.setOpaque(true);
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });
        jPanel4.add(jButton6, new org.netbeans.lib.awtextra.AbsoluteConstraints(790, 430, 90, 30));

        complain.setColumns(20);
        complain.setRows(5);
        jScrollPane3.setViewportView(complain);

        jPanel4.add(jScrollPane3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 890, 390));

        jLabel8.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jLabel8.setText("Complain:");
        jPanel4.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 0, 210, 30));

        jDialog1.getContentPane().add(jPanel4, java.awt.BorderLayout.CENTER);

        setPreferredSize(new java.awt.Dimension(1220, 520));
        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setPreferredSize(new java.awt.Dimension(1220, 520));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(108, 192, 240));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 51, 255), 3, true), "COMPLAINANT", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Century Gothic", 1, 14))); // NOI18N
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel9.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel9.setText("Firstname");
        jPanel3.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 120, 140, 20));

        mi.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        mi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                miActionPerformed(evt);
            }
        });
        mi.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                miKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                miKeyTyped(evt);
            }
        });
        jPanel3.add(mi, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 90, 70, 30));

        jLabel10.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel10.setText("M.I");
        jPanel3.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 120, 50, 20));

        fname.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        fname.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                fnameKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                fnameKeyTyped(evt);
            }
        });
        jPanel3.add(fname, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 90, 180, 30));

        lname.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        lname.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                lnameKeyPressed(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                lnameKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                lnameKeyTyped(evt);
            }
        });
        jPanel3.add(lname, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 90, 180, 30));

        jLabel7.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel7.setText("Lastname");
        jPanel3.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 120, 140, 20));

        Id.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        Id.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                IdActionPerformed(evt);
            }
        });
        Id.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                IdKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                IdKeyTyped(evt);
            }
        });
        jPanel3.add(Id, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 40, 280, 30));

        jLabel12.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel12.setText("Name:");
        jPanel3.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 70, 50, 20));

        contact.setEditable(false);
        contact.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        jPanel3.add(contact, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 160, 280, 30));

        email.setEditable(false);
        email.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        jPanel3.add(email, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 210, 280, 30));

        jLabel4.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel4.setText("Email Address:");
        jPanel3.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 190, 210, 20));

        Customer.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        Customer.setText("Customer");
        jPanel3.add(Customer, new org.netbeans.lib.awtextra.AbsoluteConstraints(320, 10, 70, 30));

        jLabel25.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel25.setText("Contact number.:");
        jPanel3.add(jLabel25, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, 150, 20));

        date.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jPanel3.add(date, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 20, 50, 20));

        image.setText("jLabel1");
        jDesktopPane1.add(image);
        image.setBounds(0, 0, 130, 130);

        jPanel3.add(jDesktopPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 30, 130, 130));

        jLabel29.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel29.setText("I.D number:");
        jPanel3.add(jLabel29, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 90, 20));

        tbl.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbl.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                tblAncestorAdded(evt);
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        tbl.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbl);

        jPanel3.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 290, 590, 220));

        jLabel5.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel5.setText("Search Your LastName:");
        jPanel3.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 260, 140, 30));

        search.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        search.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                searchKeyReleased(evt);
            }
        });
        jPanel3.add(search, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 260, 280, 30));

        jLabel22.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel22.setText("emp to driver");
        jPanel3.add(jLabel22, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 190, 170, 20));

        jPanel2.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 610, 520));

        jPanel1.setBackground(new java.awt.Color(108, 192, 240));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 51, 255), 3, true), "RESPONDENT", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Century Gothic", 1, 14))); // NOI18N
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        type.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        type.setText("Driver");
        jPanel1.add(type, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 200, 140, 40));

        jLabel13.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel13.setText("I.D number:");
        jPanel1.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 90, 80, 20));

        Id2.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        Id2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                Id2KeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                Id2KeyTyped(evt);
            }
        });
        jPanel1.add(Id2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 110, 260, 30));

        lname2.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        lname2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                lname2KeyTyped(evt);
            }
        });
        jPanel1.add(lname2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 40, 180, 30));

        jLabel11.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel11.setText("Lastname");
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 70, 140, 20));

        fname2.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        fname2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                fname2KeyTyped(evt);
            }
        });
        jPanel1.add(fname2, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 40, 180, 30));

        jLabel15.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel15.setText("Firstname");
        jPanel1.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 70, 140, 20));

        mi2.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        jPanel1.add(mi2, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 40, 70, 30));

        jLabel16.setFont(new java.awt.Font("Century Gothic", 1, 11)); // NOI18N
        jLabel16.setText("M.I");
        jPanel1.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 70, 60, 20));

        jLabel17.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel17.setText("Name:");
        jPanel1.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 20, 50, 20));
        jPanel1.add(jDesktopPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(470, 30, 130, 130));

        department.setEditable(false);
        department.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        jPanel1.add(department, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 160, 260, 30));

        jLabel18.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel18.setText("Department:");
        jPanel1.add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, 190, 20));

        jButton2.setBackground(new java.awt.Color(0, 102, 204));
        jButton2.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jButton2.setForeground(new java.awt.Color(255, 255, 255));
        jButton2.setText("CLEAR ALL");
        jButton2.setContentAreaFilled(false);
        jButton2.setOpaque(true);
        jPanel1.add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 480, 120, 30));

        jButton4.setBackground(new java.awt.Color(0, 102, 204));
        jButton4.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jButton4.setForeground(new java.awt.Color(255, 255, 255));
        jButton4.setText("COMPLAIN");
        jButton4.setContentAreaFilled(false);
        jButton4.setOpaque(true);
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 480, 110, 30));

        search1.setFont(new java.awt.Font("Century Gothic", 0, 12)); // NOI18N
        search1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                search1ActionPerformed(evt);
            }
        });
        search1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                search1KeyReleased(evt);
            }
        });
        jPanel1.add(search1, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 260, 280, 30));

        tbl1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbl1.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                tbl1AncestorAdded(evt);
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        tbl1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbl1MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tbl1);

        jPanel1.add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 290, 590, 180));

        jLabel14.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel14.setText("Search Last Name:");
        jPanel1.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 260, 110, 30));

        jPanel2.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(610, 0, 610, 520));

        add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));
    }// </editor-fold>//GEN-END:initComponents

    private void Id2KeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_Id2KeyReleased
        //if(Id.getTex­t().isEmpty()){
            //
            //            Id.setBackground(Color.yellow);
            //        }else{
            //
            //            Id.setBackground(Color.green);
            //        }
        //        try {
            //
            //            String sql= "select Lname,Fname,Mi,Department,Email from AdminLMEmployee where EmployeeID=?";
            //
            //            pst=conn.prepareStatement(sql);
            //            pst.setString(1, Id2.getText());
            //
            //            rs=pst.executeQuery();
            //            if(rs.next()){
                //                String add2=rs.getString("Lname");
                //                lname2.setText(add2);
                //                String add3=rs.getString("Fname");
                //                fname2.setText(add3);
                //                String add4=rs.getString("Mi");
                //                mi2.setText(add4);
                //
                //                String add5=rs.getString("Department");
                //                department.setText(add5);
                //
                //
                //            }
            //        }
        //        catch (Exception e){
            //            JOptionPane.showMessageDialog(null, e);
            //        }        // TODO add your handling code here:
    }//GEN-LAST:event_Id2KeyReleased

    private void Id2KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_Id2KeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isDigit(c) || (c==KeyEvent.VK_BACK_SPACE)|| c==KeyEvent.VK_DELETE)){
            evt.consume();

        }        // TODO add your handling code here:
    }//GEN-LAST:event_Id2KeyTyped

    private void lname2KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lname2KeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isAlphabetic(c) || (c==KeyEvent.VK_BACK_SPACE) || c==KeyEvent.VK_DELETE))
        {

            evt.consume();
        }        // TODO add your handling code here:
    }//GEN-LAST:event_lname2KeyTyped

    private void fname2KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_fname2KeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isAlphabetic(c) || (c==KeyEvent.VK_BACK_SPACE) || c==KeyEvent.VK_DELETE))
        {

            evt.consume();
        }        // TODO add your handling code here:
    }//GEN-LAST:event_fname2KeyTyped

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
 jDialog1.setVisible(true);
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void search1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_search1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_search1ActionPerformed

    private void search1KeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_search1KeyReleased
        //String a=search1.getText();
        //         try {
            //
            //            String sql= "select CHCEMP_ID as ID,concat(Lastname,', ',Firstname,' ',MI) as Name,Type from HR4CHCEmployee_Record where like Lastname='"+a+"'";
            //
            //            pst=conn.prepareStatement(sql);
            //            rs=pst.executeQuery();
            //            tbl1.setModel(DbUtils.resultSetToTableModel(rs));
            //
            //        }catch(Exception e){
            //            JOptionPane.showMessageDialog(null, e);
            //        }
        //
        // TODO add your handling code here:
    }//GEN-LAST:event_search1KeyReleased

    private void tbl1AncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_tbl1AncestorAdded
//        Employee();        // TODO add your handling code here:
    }//GEN-LAST:event_tbl1AncestorAdded

    private void tbl1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbl1MouseClicked
        int row =tbl1.getSelectedRow();
        String Table_click=(tbl1.getModel().getValueAt(row,0).toString());
        try{
            String sql="SELECT * from HR4CHCEmployee_Record where CHCEMP_ID='"+Table_click+"'";
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery();
            if (rs.next()) {

                String add1 = rs.getString("CHCEMP_ID");
                Id2.setText(add1);
                String add2 = rs.getString("Lastname");
                lname2.setText(add2);
                String add3 = rs.getString("Firstname");
                fname2.setText(add3);
                String add4 = rs.getString("MI");
                mi2.setText(add4);
                String add5 = rs.getString("Department");
                department.setText(add5);
            }

        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }        // TODO add your handling code here:
    }//GEN-LAST:event_tbl1MouseClicked

    private void miActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_miActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_miActionPerformed

    private void miKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_miKeyReleased

    }//GEN-LAST:event_miKeyReleased

    private void miKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_miKeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isAlphabetic(c) || (c==KeyEvent.VK_BACK_SPACE) || c==KeyEvent.VK_DELETE))
        {

            evt.consume();
        }        // TODO add your handling code here:
    }//GEN-LAST:event_miKeyTyped

    private void fnameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_fnameKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_fnameKeyReleased

    private void fnameKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_fnameKeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isAlphabetic(c) || (c==KeyEvent.VK_BACK_SPACE) || c==KeyEvent.VK_DELETE))
        {

            evt.consume();
        }        // TODO add your handling code here:
    }//GEN-LAST:event_fnameKeyTyped

    private void lnameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lnameKeyPressed
        // TODO add your handling code here:
    }//GEN-LAST:event_lnameKeyPressed

    private void lnameKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lnameKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_lnameKeyReleased

    private void lnameKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_lnameKeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isAlphabetic(c) || (c==KeyEvent.VK_BACK_SPACE) || c==KeyEvent.VK_DELETE))
        {

            evt.consume();
        }        // TODO add your handling code here:
    }//GEN-LAST:event_lnameKeyTyped

    private void IdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_IdActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_IdActionPerformed

    private void IdKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_IdKeyReleased

    }//GEN-LAST:event_IdKeyReleased

    private void IdKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_IdKeyTyped
        char c=evt.getKeyChar();
        if(!(Character.isDigit(c) || (c==KeyEvent.VK_BACK_SPACE)|| c==KeyEvent.VK_DELETE)){
            evt.consume();

        }        // TODO add your handling code here:
    }//GEN-LAST:event_IdKeyTyped

    private void tblAncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_tblAncestorAdded
  //      Customer();        // TODO add your handling code here:
    }//GEN-LAST:event_tblAncestorAdded

    private void tblMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblMouseClicked
        int row =tbl.getSelectedRow();
        String Table_click=(tbl.getModel().getValueAt(row,0).toString());
        try{
            String sql="SELECT * from Core1CMRegistration where CMCustomerID='"+Table_click+"'";
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery();
            if (rs.next()) {
                byte[]imagedata =rs.getBytes("CMPicture");
                format =new ImageIcon(imagedata);
                image.setIcon(format);
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        try{
            String sql="SELECT * from Core1CMRegistration where CMCustomerID='"+Table_click+"'";
            pst=conn.prepareStatement(sql);
            rs=pst.executeQuery();
            if (rs.next()) {

                String add1 = rs.getString("CMCustomerID");
                Id.setText(add1);
                String add2 = rs.getString("CMLastname");
                lname.setText(add2);
                String add3 = rs.getString("CMFirstname");
                fname.setText(add3);
                String add4 = rs.getString("CMMiddlename");
                mi.setText(add4);
                String add5 = rs.getString("CMContactNo");
                contact.setText(add5);
                String add6 = rs.getString("CMEmail");
                email.setText(add6);
            }

        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }        // TODO add your handling code here:
    }//GEN-LAST:event_tblMouseClicked

    private void searchKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_searchKeyReleased
        //  String a=search.getText().trim();
        //         try {
            //
            //            String sql1= "select CMCustomerID as ID,concat(CMLastname,', ',CMFirstname,' ',CMMiddlename) as Name,CMEmail as Email from Core1CMRegistration where like CMLastname '"+a+"'";
            //
            //            pst=conn.prepareStatement(sql1);
            //
            //            rs=pst.executeQuery();
            //            tbl.setModel(DbUtils.resultSetToTableModel(rs));
            //
            //        }catch(Exception e){
            //            JOptionPane.showMessageDialog(null, e);
            //        }
        //

        // TODO add your handling code here:
    }//GEN-LAST:event_searchKeyReleased

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
        String a = this.Id.getText();
        String b = this.lname.getText();
        String c1 = this.fname.getText();
        String d = this.mi.getText();
        String e = this.Id2.getText();
        String f = this.lname2.getText();
        String g = this.fname2.getText();
        String h = this.mi2.getText();
        String i = this.complain.getText();

        if (a.isEmpty()){
            JOptionPane.showMessageDialog(null, "Id of Complainant is Empty");
        }
        else if (b.isEmpty()){
            JOptionPane.showMessageDialog(null, "Lastname of Complainant is Empty");
        }
        if (c1.isEmpty()){
            JOptionPane.showMessageDialog(null, "Firstname of Complainant is Number");
        }
        else if (d.isEmpty()){
            JOptionPane.showMessageDialog(null, "Middle Initial of Complainant is Empty");
        }
        if (e.isEmpty()){
            JOptionPane.showMessageDialog(null, "Id of Respondent is Empty");
        }
        else if (f.isEmpty()){
            JOptionPane.showMessageDialog(null, "Lastname of Respondent is empty");
        }
        if (g.isEmpty()){
            JOptionPane.showMessageDialog(null, "Firstname of Respondent is empty");
        }
        else if (h.isEmpty()){
            JOptionPane.showMessageDialog(null, "Middle Initial of Respondent is empty");
        }
        if (i.isEmpty()){
            JOptionPane.showMessageDialog(null, "Complain is Empty");
        }

        else {
            try{

                String sql = "insert into AdminLMComplaints (LMComplainantId,LMCType,LMCLname,LMCFname,LMCMi,LMRType,LMRespondentId,LMRLname,LMRFname,LMRMi,LMComplain,LMDate)values(?,?,?,?,?,?,?,?,?,?,?,?)";

                pst=conn.prepareStatement(sql);
                pst.setString(1, Id.getText());
                pst.setString(2, Customer.getText());
                pst.setString(3, lname.getText());
                pst.setString(4, fname.getText());
                pst.setString(5, mi.getText());
                String value = type.getText();
                pst.setString(6, value);
                pst.setString(7, Id2.getText());
                pst.setString(8, lname2.getText());
                pst.setString(9, fname2.getText());
                pst.setString(10, mi2.getText());
                pst.setString(11, complain.getText());
                pst.setString(12, date.getText());

                pst.execute();
            } catch (SQLException ex) {
                Logger.getLogger(complaintscostumertoemp.class.getName()).log(Level.SEVERE, null, ex);
            }
            try{

                String sql1 = "insert into AdminLMComplainant (LMId,LMType,LMCLname,LMCFname,LMCMi)values(?,?,?,?,?)";

                pst=conn.prepareStatement(sql1);
                pst.setString(1, Id.getText());
                pst.setString(2, Customer.getText());
                pst.setString(3, lname.getText());
                pst.setString(4, fname.getText());
                pst.setString(5, mi.getText());

                pst.execute();

            } catch (SQLException ex) {
                Logger.getLogger(complaintscostumertoemp.class.getName()).log(Level.SEVERE, null, ex);
            }
            try{

                String sql2 = "insert into AdminLMRespondent (LMId,LMType,LMRLname,LMRFname,LMRMi)values(?,?,?,?,?)";

                pst=conn.prepareStatement(sql2);
                pst.setString(1, Id2.getText());
                String value = type.getText();
                pst.setString(2, value);
                pst.setString(3, lname2.getText());
                pst.setString(4, fname2.getText());
                pst.setString(5, mi2.getText());

                pst.execute();
                Id.setText("");
                lname.setText("");
                fname.setText("");
                mi.setText("");
                contact.setText("");
                email.setText("");
                Id2.setText("");
                lname2.setText("");
                fname2.setText("");
                mi2.setText("");
                complain.setText("");

                JOptionPane.showMessageDialog(null, "Saved");

            } catch (SQLException ex) {
                Logger.getLogger(complaintscostumertoemp.class.getName()).log(Level.SEVERE, null, ex);
            }
        }        // TODO add your handling code here:
    }//GEN-LAST:event_jButton6ActionPerformed

    private void jPanel4AncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_jPanel4AncestorAdded
        jDialog1.setBounds(200,150,925, 500);      // TODO add your handling code here:
    }//GEN-LAST:event_jPanel4AncestorAdded


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Customer;
    private javax.swing.JTextField Id;
    private javax.swing.JTextField Id2;
    private javax.swing.JTextArea complain;
    private javax.swing.JTextField contact;
    private javax.swing.JLabel date;
    private javax.swing.JTextField department;
    private javax.swing.JTextField email;
    private javax.swing.JTextField fname;
    private javax.swing.JTextField fname2;
    private javax.swing.JLabel image;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton6;
    private javax.swing.JDesktopPane jDesktopPane1;
    private javax.swing.JDesktopPane jDesktopPane2;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTextField lname;
    private javax.swing.JTextField lname2;
    private javax.swing.JTextField mi;
    private javax.swing.JTextField mi2;
    private javax.swing.JTextField search;
    private javax.swing.JTextField search1;
    private javax.swing.JTable tbl;
    private javax.swing.JTable tbl1;
    private javax.swing.JLabel type;
    // End of variables declaration//GEN-END:variables

private ImageIcon format =null;
}
