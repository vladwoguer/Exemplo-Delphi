package main;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Label;
import java.awt.Panel;

public class MostraMenssagem extends Frame{
	Label lblMenssagem;
	public MostraMenssagem(String menssagem) {
		
		super("Hello World (AWT)");
		setSize(200, 200);
		addWindowListener(new BasicWindowMonitor());

		Panel toolbar = new Panel();
		toolbar.setLayout(new FlowLayout(FlowLayout.LEFT));

		this.lblMenssagem = new Label(menssagem);
		this.lblMenssagem.setSize(100, 30);
		this.lblMenssagem.setFont(new Font("Serif", Font.PLAIN, 24));
		toolbar.add(lblMenssagem);
		
		add(toolbar, BorderLayout.NORTH);
	}
}
