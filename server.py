import socket

def test_server(host, port):
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    client_socket.connect((host, port))
    message = client_socket.recv(1024)
    print("Received from server:", message.decode())
    client_socket.close()

if __name__ == "__main__":
    HOST = "<your-public-url>"
    PORT = 5000
    test_server(HOST, PORT)
