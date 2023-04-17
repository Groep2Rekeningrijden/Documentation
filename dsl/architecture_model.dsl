# Systems
cloudinary = softwareSystem "Cloudinary Image Hosting" "Hosts user profile pictures with static URLs" "Existing System"

rekeningrijden = softwareSystem "Rekeningrijden" {
    dashboard  = container "Rekeningrijden WebApp" "Primary webapp for users" "${WEB}" "Web Browser"
    gateway = container "User API Gateway" "Kong API Gateway as the ingress for user requests" "Kong API Gateway" "Broker"
    # Auth Service 
    auth_db = container "Auth DB" "Authentication data" "${SQL}" "Database"
    authenticator = container "Authenticator" "Processes user registration, login and JWT generation" "${PYTHON}" {
        -> auth_db
    }
}

# Top level
user -> dashboard "Uses"

# Gateway usage
dashboard -> gateway "Sends requests"
gateway -> authenticator "Sends registration and signin requests, retrieves JWT"\