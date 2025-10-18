<?php
/**
 * Database Migration Script
 * Run this script to fix the user_id field in existing databases
 */

require_once 'db_connect.php';

try {
    // Check if the table exists
    $result = $conn->query("SHOW TABLES LIKE 'user_table'");
    if ($result->num_rows == 0) {
        echo "Table 'user_table' does not exist. Please run the formv.sql script first.\n";
        exit;
    }

    // Check if user_id is already auto-increment
    $result = $conn->query("SHOW COLUMNS FROM user_table LIKE 'user_id'");
    $column = $result->fetch_assoc();
    
    if (strpos($column['Extra'], 'auto_increment') !== false) {
        echo "user_id is already auto-increment. No migration needed.\n";
        exit;
    }

    echo "Starting database migration...\n";

    // Add primary key constraint if it doesn't exist
    $conn->query("ALTER TABLE user_table ADD PRIMARY KEY (user_id)");
    echo "✓ Added primary key constraint\n";

    // Modify user_id to be auto-increment
    $conn->query("ALTER TABLE user_table MODIFY user_id int(11) NOT NULL AUTO_INCREMENT");
    echo "✓ Modified user_id to auto-increment\n";

    // Set auto-increment to start from 1
    $conn->query("ALTER TABLE user_table AUTO_INCREMENT = 1");
    echo "✓ Set auto-increment start value\n";

    echo "Migration completed successfully!\n";

} catch (Exception $e) {
    echo "Migration failed: " . $e->getMessage() . "\n";
}

$conn->close();
?>
