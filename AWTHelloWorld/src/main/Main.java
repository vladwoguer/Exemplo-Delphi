package main;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowListener;

/**
 * Hello World em AWT
 * 
 * @author Vladwoguer Bezerra
 *
 */
public class Main extends Frame implements ActionListener {
	Button helloWorld;

	public Main() {
		super("Hello World (AWT)");
		setSize(450, 250);
		addWindowListener(new BasicWindowMonitor());

		Panel toolbar = new Panel();
		toolbar.setLayout(new FlowLayout(FlowLayout.LEFT));

		helloWorld = new Button("Hello World");
		helloWorld.addActionListener(this);
		helloWorld.setSize(50, 30);
		toolbar.add(helloWorld);
		
		add(toolbar, BorderLayout.NORTH);
	}

	public void actionPerformed(ActionEvent ae) {
		MostraMenssagem helloWorld = new MostraMenssagem("Hello World!");
		helloWorld.setVisible(true);
	}

	public static void main(String args[]) {
		Main main = new Main();
		main.setVisible(true);
	}
}
