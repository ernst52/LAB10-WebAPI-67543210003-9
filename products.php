<?php
header("Content-Type: application/json");

// DB connection
$host = "localhost";
$user = "root";
$pass = ""; // XAMPP default
$db   = "caving_gear";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die(json_encode(["error" => "DB connection failed"]));
}

// Determine request method
$method = $_SERVER['REQUEST_METHOD'];
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

switch ($method) {
    case "GET":
        if ($id) {
            $stmt = $conn->prepare("SELECT * FROM products WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result = $stmt->get_result()->fetch_assoc();
            echo json_encode($result ?: []);
        } else {
            $result = $conn->query("SELECT * FROM products");
            $rows = [];
            while ($row = $result->fetch_assoc()) {
                $rows[] = $row;
            }
            echo json_encode($rows);
        }
        break;

    case "POST":
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("INSERT INTO products (title, description, price, category, quantity, brand) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param(
            "ssdsis",
            $data['title'],
            $data['description'],
            $data['price'],
            $data['category'],
            $data['quantity'],
            $data['brand']
        );
        $stmt->execute();
        echo json_encode(["id" => $stmt->insert_id] + $data);
        break;

    case "PUT":
        if (!$id) {
            http_response_code(400);
            echo json_encode(["error" => "ID required"]);
            exit;
        }
        $data = json_decode(file_get_contents("php://input"), true);
        $stmt = $conn->prepare("UPDATE products SET title=?, description=?, price=?, category=?, quantity=?, brand=? WHERE id=?");
        $stmt->bind_param(
            "ssdsisi",
            $data['title'],
            $data['description'],
            $data['price'],
            $data['category'],
            $data['quantity'],
            $data['brand'],
            $id
        );
        $stmt->execute();
        echo json_encode(["message" => "Product updated"]);
        break;

    case "DELETE":
        if (!$id) {
            http_response_code(400);
            echo json_encode(["error" => "ID required"]);
            exit;
        }
        $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        echo json_encode(["message" => "Product deleted"]);
        break;

    default:
        http_response_code(405);
        echo json_encode(["error" => "Method not allowed"]);
}

$conn->close();
