package web;

import java.awt.EventQueue;
import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.WindowConstants;


public class ConversorSwing extends JFrame {
	private static final long serialVersionUID = -611799915561260226L;

	private JLabel millasLabel;
	private JButton convertirButton;
	private JLabel kilometrosLabel;
	private JTextField millasTextField;
	private Conversor conversor = new Conversor();

	public ConversorSwing() {
		this.initComponents();
	}

	private void initComponents() {
		this.setTitle("Conversor Millas/Km");
		this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);

		this.millasTextField = new JTextField();
		this.kilometrosLabel = new JLabel();

		this.millasLabel = new JLabel();
		this.millasLabel.setText("Millas");

		this.convertirButton = new JButton();
		this.convertirButton.setText("Convertir");
		this.convertirButton.addActionListener(this::convertButtonActionPerformed);

		this.kilometrosLabel.setText("Kilometros");
		this.configureLayout();
		this.pack();
	}

	protected void configureLayout() {
		this.getContentPane().setLayout(new GridLayout(2, 2, 10, 10));
		this.getContentPane().add(this.millasTextField);
		this.getContentPane().add(this.millasLabel);
		this.getContentPane().add(this.convertirButton);
		this.getContentPane().add(this.kilometrosLabel);
	}

	private void convertButtonActionPerformed(java.awt.event.ActionEvent evt) {
		double millas = Double.parseDouble(this.millasTextField.getText());
		double kilometros = this.conversor.convertir(millas);
		this.kilometrosLabel.setText(kilometros + " Km");
	}

	/**
	 * @param args
	 *            the command line arguments
	 */
	public static void main(String args[]) {
		EventQueue.invokeLater(() -> new ConversorSwing().setVisible(true));
	}

}