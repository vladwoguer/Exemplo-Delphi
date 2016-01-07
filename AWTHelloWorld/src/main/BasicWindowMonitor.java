package main;

import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

import java.awt.event.*;
import java.awt.Window;

public class BasicWindowMonitor extends WindowAdapter {

	@Override
	public void windowClosing(WindowEvent e) {
		Window w = e.getWindow();
		w.setVisible(false);
		w.dispose();
		System.exit(0);
	}
}