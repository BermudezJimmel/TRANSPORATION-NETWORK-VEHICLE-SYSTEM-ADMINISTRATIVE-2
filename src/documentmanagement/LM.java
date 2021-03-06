/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package documentmanagement;

import static java.lang.Thread.sleep;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author Jimmel Bermudez
 */
public class LM extends javax.swing.JPanel {
Connection conn = null;
ResultSet rs = null;
PreparedStatement pst = null; 
    /**
     * Creates new form LM
     */
    public LM() {
        initComponents();
         conn = databaseconn.ConnecrDb();
         File();
         deployed.setVisible(false);
         date();
         date.setVisible(false);
    }
private void File(){

        try{
           
           String sql = "select LMAttachno as No#,LMDocumentName as Document,LMDocument as Path,LMQuantity as Qty,LMStatus as Status from AdminLMAttachDocu where LMStatus='Approved' or LMStatus='Deployed'";
           pst=conn.prepareStatement(sql);
           
           rs = pst.executeQuery();
           tbl.setModel(DbUtils.resultSetToTableModel(rs));
          }
            catch(Exception e){
           JOptionPane.showMessageDialog(null, e);
           }
        
    }
public void date(){
    Thread clock= new Thread(){
    public void run(){
    for(;;){
    Calendar calen = GregorianCalendar.getInstance();
    int AM_PM = calen.get(Calendar.AM_PM);
                    
    String [] days = new String [] {"","","","","","",""};
    String day_night = "";
            if (AM_PM==1)
            {day_night ="PM";}
            else
            {day_night = "AM";}
            
  //  time1.setText(hour+":"+mins+":"+secs); 


date.setVisible(false);
int mons = calen.get(Calendar.MONTH);
int day = calen.get(Calendar.DAY_OF_MONTH);
int yr = calen.get(Calendar.YEAR);
date.setText(days[calen.get(Calendar.DAY_OF_WEEK)-1]+" "+(mons+1)+"/"+day+"/"+yr);    
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

        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        id = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        document = new javax.swing.JTextField();
        date = new javax.swing.JLabel();
        department = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jScrollPane5 = new javax.swing.JScrollPane();
        tbl = new javax.swing.JTable();
        save = new javax.swing.JButton();
        quantity = new javax.swing.JTextField();
        deployed = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        path = new javax.swing.JTextField();

        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(108, 192, 240));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel3.setBackground(new java.awt.Color(108, 192, 240));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 51, 255), 3, true), "READY TO DEPLOY FROM LEGAL MANAGEMENT", javax.swing.border.TitledBorder.LEFT, javax.swing.border.TitledBorder.TOP, new java.awt.Font("Century Gothic", 1, 18))); // NOI18N
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jPanel3.add(id, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 50, 460, 30));

        jLabel3.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel3.setText("Approved No.:");
        jPanel3.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 30, 100, 20));

        document.setEditable(false);
        jPanel3.add(document, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 150, 460, 30));

        date.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        jPanel3.add(date, new org.netbeans.lib.awtextra.AbsoluteConstraints(880, 320, 90, 30));

        department.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                departmentActionPerformed(evt);
            }
        });
        jPanel3.add(department, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 100, 460, 30));

        jLabel5.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel5.setText("Department:");
        jPanel3.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 80, 100, 20));

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
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                tblAncestorAdded(evt);
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        tbl.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tblMouseClicked(evt);
            }
        });
        jScrollPane5.setViewportView(tbl);

        jPanel3.add(jScrollPane5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 30, 620, 510));

        save.setBackground(new java.awt.Color(0, 102, 204));
        save.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        save.setForeground(new java.awt.Color(255, 255, 255));
        save.setText("Deploy");
        save.setContentAreaFilled(false);
        save.setOpaque(true);
        save.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                saveMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                saveMouseExited(evt);
            }
        });
        save.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                saveActionPerformed(evt);
            }
        });
        jPanel3.add(save, new org.netbeans.lib.awtextra.AbsoluteConstraints(1010, 360, 110, 30));

        quantity.setEditable(false);
        jPanel3.add(quantity, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 200, 460, 30));

        deployed.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        deployed.setText("Deployed");
        jPanel3.add(deployed, new org.netbeans.lib.awtextra.AbsoluteConstraints(1010, 390, 90, 30));

        jLabel10.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel10.setText("Quantity:");
        jPanel3.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 180, 70, 20));

        jLabel9.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel9.setText("Document:");
        jPanel3.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 130, 90, 20));

        jLabel11.setFont(new java.awt.Font("Century Gothic", 1, 12)); // NOI18N
        jLabel11.setText("Path:");
        jPanel3.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 230, 50, 20));

        path.setEditable(false);
        jPanel3.add(path, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 250, 460, 30));

        jPanel1.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1220, 550));
        jPanel3.getAccessibleContext().setAccessibleName("NEW APPROVED FROM LEGAL MANAGEMENT");

        add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 1220, 550));
    }// </editor-fold>//GEN-END:initComponents

    private void departmentActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_departmentActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_departmentActionPerformed

    private void saveMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_saveMouseEntered
        // TODO add your handling code here:
    }//GEN-LAST:event_saveMouseEntered

    private void saveMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_saveMouseExited
        // TODO add your handling code here:
    }//GEN-LAST:event_saveMouseExited

    private void saveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_saveActionPerformed
 try{
            
        String sql = "insert into AdminDMDeploymentLM (DMAttachno,DMDepartment,DMDocumentName,DMDocument,DMStatus,DMDate)values(?,?,?,?,?,?)";
            

    pst=conn.prepareStatement(sql);
    pst.setString(1, id.getText());
    pst.setString(2, department.getText());            
    pst.setString(3, document.getText());
    pst.setString(4, path.getText());
    pst.setString(5, deployed.getText());
    pst.setString(6, date.getText());           
    
      
      
    pst.execute();
             
    id.setText("");           
    document.setText("");
    path.setText("");
    department.setText("");           
    
    JOptionPane.showMessageDialog(null, "Saved");
        } catch (Exception e) {   
             JOptionPane.showMessageDialog(null, e);
         }
try{
       String value1 = id.getText();
       
       String sql="update AdminLMAttachDocu set LMStatus='Deployed' where LMAttachno='"+value1+"'";
       
       pst=conn.prepareStatement(sql);
       pst.execute();
       JOptionPane.showMessageDialog(null, "Updated");
       }catch(Exception e){
       JOptionPane.showMessageDialog(null, e);

}// TODO add your handling code here:
        // TODO add your handling code here:
    }//GEN-LAST:event_saveActionPerformed

    private void tblMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tblMouseClicked
    int row =tbl.getSelectedRow();
            String Table_click=(tbl.getModel().getValueAt(row,0).toString());
        try{
        String sql="SELECT * from AdminLMAttachDocu where LMAttachno='"+Table_click+"'";
        pst=conn.prepareStatement(sql);
        rs=pst.executeQuery();
        if (rs.next()) {
            
            String add1 = rs.getString("LMAttachno");
            id.setText(add1);
            String add2 = rs.getString("LMDocumentName");
            document.setText(add2);
            String add3 = rs.getString("LMDocument");
            path.setText(add3);
            String add4 = rs.getString("LMDepartment");
            department.setText(add4);
            String add5 = rs.getString("LMQuantity");
            quantity.setText(add5);
            
        }
        
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, e);
    }        // TODO add your handling code here:
    }//GEN-LAST:event_tblMouseClicked

    private void tblAncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_tblAncestorAdded
File();        // TODO add your handling code here:
    }//GEN-LAST:event_tblAncestorAdded


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel date;
    private javax.swing.JTextField department;
    private javax.swing.JLabel deployed;
    private javax.swing.JTextField document;
    private javax.swing.JTextField id;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane5;
    private javax.swing.JTextField path;
    private javax.swing.JTextField quantity;
    private javax.swing.JButton save;
    private javax.swing.JTable tbl;
    // End of variables declaration//GEN-END:variables
}
