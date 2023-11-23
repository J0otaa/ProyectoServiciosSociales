
package frontend.modelsUI;

import java.awt.Color;
import java.awt.Graphics;
import javax.swing.plaf.basic.BasicProgressBarUI;

public class ProgressBar extends javax.swing.JProgressBar{
    
    //variables globales
    private Color colorProgress;
    private Color colorBG;

    
    //GETTERS Y SETTERS
    
    public void setColorProgress(Color colorProgress) {
        this.colorProgress = colorProgress;
    }

    public void setColorBG(Color colorBG) {
        this.colorBG = colorBG;
    }

    @Override
    protected void paintComponent(Graphics g) {
     
        this.setBackground(colorBG);
        this.setForeground(colorProgress);
        super.paintComponent(g);
    }
    
   
   //constructor
    public ProgressBar()
    {   
        setUI(new BasicProgressBarUI());
        
    }
}
