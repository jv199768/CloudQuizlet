# A simple forward proxy using Python
import http.server
import socketserver

PORT = 8080

class Proxy(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Log the request
        print(f"Request received for {self.path}")
        
        # Modify the request here if needed, or just forward it as-is
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b"Forward Proxy Response: Request forwarded!")

# Setting up the server to listen on PORT 8888
with socketserver.TCPServer(("", PORT), Proxy) as httpd:
    print(f"Serving as a forward proxy on port {PORT}")
    httpd.serve_forever()