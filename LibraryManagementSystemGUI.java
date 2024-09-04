package LibraryManagementSystem;

import javax.swing.*;
import java.awt.*;
import java.sql.*;

public class LibraryManagementSystemGUI extends JFrame {
    private Connection connection;

    public LibraryManagementSystemGUI() {
        // Connect to the database
        try {
            connection = DatabaseConnection.getConnection();
            System.out.println("Connected to the database successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Failed to connect to the database.", "Error", JOptionPane.ERROR_MESSAGE);
        }

        // Set up the main frame
        setTitle("Library Management System");
        setSize(400, 350); // Increased size to accommodate new button
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        // Create the main panel with buttons
        JPanel mainPanel = new JPanel();
        mainPanel.setLayout(new GridLayout(7, 1)); // Adjusted for new button

        JButton addStudentButton = new JButton("Add Student");
        JButton addBookButton = new JButton("Add Book");
        JButton issueBookButton = new JButton("Issue Book");
        JButton returnBookButton = new JButton("Return Book");
        JButton viewBorrowHistoryButton = new JButton("View Borrow History");
        JButton searchBookButton = new JButton("Search Book"); // New button
        JButton exitButton = new JButton("Exit");

        mainPanel.add(addStudentButton);
        mainPanel.add(addBookButton);
        mainPanel.add(issueBookButton);
        mainPanel.add(returnBookButton);
        mainPanel.add(viewBorrowHistoryButton);
        mainPanel.add(searchBookButton); // Add new button to panel
        mainPanel.add(exitButton);

        // Add action listeners to buttons
        addStudentButton.addActionListener(e -> showAddStudentDialog());
        addBookButton.addActionListener(e -> showAddBookDialog());
        issueBookButton.addActionListener(e -> showIssueBookDialog());
        returnBookButton.addActionListener(e -> showReturnBookDialog());
        viewBorrowHistoryButton.addActionListener(e -> showViewBorrowHistoryDialog());
        searchBookButton.addActionListener(e -> showSearchBookDialog()); // Action listener for new button
        exitButton.addActionListener(e -> System.exit(0));

        // Add the main panel to the frame
        add(mainPanel);

        // Make the frame visible
        setVisible(true);
    }

    private void showAddStudentDialog() {
        JDialog dialog = new JDialog(this, "Add Student", true);
        dialog.setSize(300, 200);
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(4, 2));
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel idLabel = new JLabel("Student ID:");
        JLabel nameLabel = new JLabel("Student Name:");
        JLabel classLabel = new JLabel("Student Class:");

        JTextField idField = new JTextField();
        JTextField nameField = new JTextField();
        JTextField classField = new JTextField();

        panel.add(idLabel);
        panel.add(idField);
        panel.add(nameLabel);
        panel.add(nameField);
        panel.add(classLabel);
        panel.add(classField);

        JButton addButton = new JButton("Add");
        addButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(addButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        addButton.addActionListener(e -> {
            try {
                int id = Integer.parseInt(idField.getText());
                String name = nameField.getText();
                String studentClass = classField.getText();

                String query = "INSERT INTO Students (S_ID, S_Name, S_Class) VALUES (?, ?, ?)";
                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setInt(1, id);
                    stmt.setString(2, name);
                    stmt.setString(3, studentClass);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        JOptionPane.showMessageDialog(this, "Student added successfully!");
                    } else {
                        JOptionPane.showMessageDialog(this, "Failed to add student.");
                    }
                }
            } catch (SQLException | NumberFormatException ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(this, "Error adding student.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    private void showAddBookDialog() {
        JDialog dialog = new JDialog(this, "Add Book", true);
        dialog.setSize(300, 250);
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(4, 2));
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel idLabel = new JLabel("Book ID:");
        JLabel nameLabel = new JLabel("Book Name:");
        JLabel quantityLabel = new JLabel("Quantity:");
        JLabel libraryIdLabel = new JLabel("Library ID:");

        JTextField idField = new JTextField();
        JTextField nameField = new JTextField();
        JTextField quantityField = new JTextField();
        JTextField libraryIdField = new JTextField();

        panel.add(idLabel);
        panel.add(idField);
        panel.add(nameLabel);
        panel.add(nameField);
        panel.add(quantityLabel);
        panel.add(quantityField);
        panel.add(libraryIdLabel);
        panel.add(libraryIdField);

        JButton addButton = new JButton("Add");
        addButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(addButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        addButton.addActionListener(e -> {
            try {
                int id = Integer.parseInt(idField.getText());
                String name = nameField.getText();
                int quantity = Integer.parseInt(quantityField.getText());
                int libraryId = Integer.parseInt(libraryIdField.getText());

                String query = "INSERT INTO Books (Book_ID, Name, Quantity, Library_ID) VALUES (?, ?, ?, ?)";
                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setInt(1, id);
                    stmt.setString(2, name);
                    stmt.setInt(3, quantity);
                    stmt.setInt(4, libraryId);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        JOptionPane.showMessageDialog(this, "Book added successfully!");
                    } else {
                        JOptionPane.showMessageDialog(this, "Failed to add book.");
                    }
                }
            } catch (SQLException | NumberFormatException ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(this, "Error adding book.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    private void showIssueBookDialog() {
        JDialog dialog = new JDialog(this, "Issue Book", true);
        dialog.setSize(300, 250);
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(3, 2));
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel studentIdLabel = new JLabel("Student ID:");
        JLabel bookIdLabel = new JLabel("Book ID:");
        JLabel reserveDateLabel = new JLabel("Reserve Date (YYYY-MM-DD):");

        JTextField studentIdField = new JTextField();
        JTextField bookIdField = new JTextField();
        JTextField reserveDateField = new JTextField();

        panel.add(studentIdLabel);
        panel.add(studentIdField);
        panel.add(bookIdLabel);
        panel.add(bookIdField);
        panel.add(reserveDateLabel);
        panel.add(reserveDateField);

        JButton issueButton = new JButton("Issue");
        issueButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(issueButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        issueButton.addActionListener(e -> {
            try {
                int studentId = Integer.parseInt(studentIdField.getText());
                int bookId = Integer.parseInt(bookIdField.getText());
                String reserveDate = reserveDateField.getText();

                String getTransactionIdQuery = "SELECT MAX(Transaction_ID) AS max_id FROM Book_Transaction";
                int transactionId = 1;
                try (Statement stmt = connection.createStatement(); ResultSet rs = stmt.executeQuery(getTransactionIdQuery)) {
                    if (rs.next()) {
                        transactionId = rs.getInt("max_id") + 1;
                    }
                }

                String query = "INSERT INTO Book_Transaction (Transaction_ID, S_ID, Book_ID, Reserve_date) VALUES (?, ?, ?, ?)";
                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setInt(1, transactionId);
                    stmt.setInt(2, studentId);
                    stmt.setInt(3, bookId);
                    stmt.setDate(4, java.sql.Date.valueOf(reserveDate));

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        JOptionPane.showMessageDialog(this, "Book issued successfully!");
                    } else {
                        JOptionPane.showMessageDialog(this, "Failed to issue book.");
                    }
                }
            } catch (SQLException | NumberFormatException ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(this, "Error issuing book.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    private void showReturnBookDialog() {
        JDialog dialog = new JDialog(this, "Return Book", true);
        dialog.setSize(300, 200);
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(2, 2));
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel transactionIdLabel = new JLabel("Transaction ID:");
        JLabel returnDateLabel = new JLabel("Return Date (YYYY-MM-DD):");

        JTextField transactionIdField = new JTextField();
        JTextField returnDateField = new JTextField();

        panel.add(transactionIdLabel);
        panel.add(transactionIdField);
        panel.add(returnDateLabel);
        panel.add(returnDateField);

        JButton returnButton = new JButton("Return");
        returnButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(returnButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        returnButton.addActionListener(e -> {
            try {
                int transactionId = Integer.parseInt(transactionIdField.getText());
                String returnDate = returnDateField.getText();

                String query = "UPDATE Book_Transaction SET Return_date = ? WHERE Transaction_ID = ?";
                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setDate(1, java.sql.Date.valueOf(returnDate));
                    stmt.setInt(2, transactionId);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        JOptionPane.showMessageDialog(this, "Book returned successfully!");
                    } else {
                        JOptionPane.showMessageDialog(this, "Failed to return book.");
                    }
                }
            } catch (SQLException | NumberFormatException ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(this, "Error returning book.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    private void showViewBorrowHistoryDialog() {
        JDialog dialog = new JDialog(this, "View Borrow History", true);
        dialog.setSize(300, 200); // Adjusted size for additional fields
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(3, 2)); // Adjusted for additional fields
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel studentIdLabel = new JLabel("Student ID:");
        JLabel studentNameLabel = new JLabel("Student Name:");

        JTextField studentIdField = new JTextField();
        JTextField studentNameField = new JTextField();

        panel.add(studentIdLabel);
        panel.add(studentIdField);
        panel.add(studentNameLabel);
        panel.add(studentNameField);

        JButton viewButton = new JButton("View History");
        viewButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(viewButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        viewButton.addActionListener(e -> {
            String studentIdText = studentIdField.getText();
            String studentName = studentNameField.getText();

            // Construct the query based on provided criteria
            String query = "SELECT BT.Transaction_ID, BT.Book_ID, BT.Reserve_date, BT.Return_date " +
                           "FROM Book_Transaction BT " +
                           "JOIN Students S ON BT.S_ID = S.S_ID " +
                           "WHERE (S.S_ID = ? OR S.S_Name = ?)";

            try (PreparedStatement stmt = connection.prepareStatement(query)) {
                // Set parameters for the query
                if (!studentIdText.isEmpty()) {
                    stmt.setInt(1, Integer.parseInt(studentIdText));
                    stmt.setString(2, studentName);
                } else {
                    stmt.setInt(1, 0); // Set to zero or any invalid ID
                    stmt.setString(2, studentName);
                }

                try (ResultSet rs = stmt.executeQuery()) {
                    StringBuilder results = new StringBuilder("Borrow History:\n");
                    while (rs.next()) {
                        int transactionId = rs.getInt("Transaction_ID");
                        int bookId = rs.getInt("Book_ID");
                        Date reserveDate = rs.getDate("Reserve_date");
                        Date returnDate = rs.getDate("Return_date");

                        results.append(String.format("Transaction ID: %d, Book ID: %d, Reserve Date: %s, Return Date: %s%n",
                                transactionId, bookId, reserveDate, returnDate));
                    }
                    JOptionPane.showMessageDialog(this, results.length() > 0 ? results.toString() : "No history found.", "Borrow History", JOptionPane.INFORMATION_MESSAGE);
                }
            } catch (SQLException | NumberFormatException ex) {
                ex.printStackTrace();
                JOptionPane.showMessageDialog(this, "Error retrieving borrow history.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    // Method to show the search book dialog
    private void showSearchBookDialog() {
        JDialog dialog = new JDialog(this, "Search Book", true);
        dialog.setSize(350, 250);
        dialog.setLayout(new BoxLayout(dialog.getContentPane(), BoxLayout.Y_AXIS));
        dialog.setLocationRelativeTo(this);

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(4, 2));
        panel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        JLabel searchByLabel = new JLabel("Search By:");
        JLabel idLabel = new JLabel("Book ID:");
        JLabel nameLabel = new JLabel("Book Name:");

        JComboBox<String> searchByComboBox = new JComboBox<>(new String[]{"ID", "Name"});
        JTextField idField = new JTextField();
        JTextField nameField = new JTextField();

        panel.add(searchByLabel);
        panel.add(searchByComboBox);
        panel.add(idLabel);
        panel.add(idField);
        panel.add(nameLabel);
        panel.add(nameField);

        JButton searchButton = new JButton("Search");
        searchButton.setAlignmentX(CENTER_ALIGNMENT);

        JPanel buttonPanel = new JPanel();
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(searchButton);

        dialog.add(panel);
        dialog.add(buttonPanel);

        searchButton.addActionListener(e -> {
            String searchBy = (String) searchByComboBox.getSelectedItem();
            if ("ID".equals(searchBy)) {
                searchBookById(idField.getText());
            } else if ("Name".equals(searchBy)) {
                searchBookByName(nameField.getText());
            }
            dialog.dispose();
        });

        dialog.setVisible(true);
    }

    private void searchBookById(String id) {
        try {
            int bookId = Integer.parseInt(id);
            String query = "SELECT Name, Library_ID FROM Books WHERE Book_ID = ?";
            try (PreparedStatement stmt = connection.prepareStatement(query)) {
                stmt.setInt(1, bookId);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        String bookName = rs.getString("Name");
                        int libraryId = rs.getInt("Library_ID");
                        JOptionPane.showMessageDialog(this, String.format("Book ID: %d\nName: %s\nLibrary ID: %d", bookId, bookName, libraryId));
                    } else {
                        JOptionPane.showMessageDialog(this, "No book found with the given ID.", "Info", JOptionPane.INFORMATION_MESSAGE);
                    }
                }
            }
        } catch (SQLException | NumberFormatException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error searching for book.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void searchBookByName(String name) {
        try {
            String query = "SELECT Book_ID, Library_ID FROM Books WHERE Name = ?";
            try (PreparedStatement stmt = connection.prepareStatement(query)) {
                stmt.setString(1, name);
                try (ResultSet rs = stmt.executeQuery()) {
                    StringBuilder results = new StringBuilder("Books found:\n");
                    while (rs.next()) {
                        int bookId = rs.getInt("Book_ID");
                        int libraryId = rs.getInt("Library_ID");
                        results.append(String.format("Book ID: %d, Library ID: %d%n", bookId, libraryId));
                    }
                    JOptionPane.showMessageDialog(this, results.length() > 0 ? results.toString() : "No books found with the given name.", "Search Results", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error searching for book.", "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new LibraryManagementSystemGUI());
    }
}
