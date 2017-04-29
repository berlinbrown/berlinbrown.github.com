import java.applet.Applet;

public class ChemistryApplet extends Applet {
	
	private static final long serialVersionUID = 3896378192108955446L;

	 public void init() {
		 final Squirm s = new Squirm();		 
		 this.add(s);
		 s.init();
		 s.start();
	 }
	
} // End of the class //
