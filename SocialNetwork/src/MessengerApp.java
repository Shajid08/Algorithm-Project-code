import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MessengerApp extends JFrame implements ActionListener {
    private JTextArea friend1TextArea, friend2TextArea;
    private JTextField friend1TextField, friend2TextField;

    public MessengerApp() {
        setTitle("Messenger");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        friend1TextArea = new JTextArea();
        friend2TextArea = new JTextArea();
        friend1TextField = new JTextField();
        friend2TextField = new JTextField();

        JButton friend1SendButton = new JButton("Shajid");
        JButton friend2SendButton = new JButton("Rashidul");
        friend1SendButton.addActionListener(this);
        friend2SendButton.addActionListener(this);

        JPanel friend1Panel = new JPanel(new BorderLayout());
        friend1Panel.add(new JScrollPane(friend1TextArea), BorderLayout.CENTER);
        friend1Panel.add(friend1TextField, BorderLayout.SOUTH);
        friend1Panel.add(friend1SendButton, BorderLayout.EAST);

        JPanel friend2Panel = new JPanel(new BorderLayout());
        friend2Panel.add(new JScrollPane(friend2TextArea), BorderLayout.CENTER);
        friend2Panel.add(friend2TextField, BorderLayout.SOUTH);
        friend2Panel.add(friend2SendButton, BorderLayout.EAST);

        add(friend1Panel, BorderLayout.WEST);
        add(friend2Panel, BorderLayout.EAST);

        pack();
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getActionCommand().equals("Send to Friend 1")) {
            String message = friend1TextField.getText();
            friend1TextArea.append("Friend 1: " + message + "\n");
            friend1TextField.setText("");
        } else if (e.getActionCommand().equals("Send to Friend 2")) {
            String message = friend2TextField.getText();
            friend2TextArea.append("Friend 2: " + message + "\n");
            friend2TextField.setText("");
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(MessengerApp::new);
    }
}
