package splash;

import java.awt.*;
import javax.swing.*;

public class SplashScreen extends JWindow {
	
	  // A simple little method to show a title screen in the center
	  // of the screen for the amount of time given in the constructor
	  public void showSplash() {
	    JPanel content = (JPanel)getContentPane();
	    content.setBackground(Color.black);

	    // Set the window's bounds, centering the window
	    int width = 1304;
	    int height = 745;
	    Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
	    int x = (screen.width-width)/2;
	    int y = (screen.height-height)/2;
	    setBounds(x,y,width,height);

	    // Build the splash screen
	    JLabel label = new JLabel(new ImageIcon("/home/varun/Downloads/Portfolio/images/7.gif"));
	    JLabel copyrt = new JLabel
	      ("Please Wait: Server Observing Client Resources", JLabel.CENTER);
	    copyrt.setFont(new Font("Sans-Serif", Font.ITALIC, 30));
	    content.add(label, BorderLayout.CENTER);
	    content.add(copyrt, BorderLayout.SOUTH);
	    Color oraRed = new Color(156, 20, 20,  255);
	    content.setBorder(BorderFactory.createLineBorder(oraRed, 0));

	    // Display it
	    setVisible(true);

	    // Wait a little while, maybe while loading resources
	    try { Thread.sleep(20000); } catch (Exception e) {}

	    setVisible(false);
	    
	    //System.exit(0);
	  }

}
