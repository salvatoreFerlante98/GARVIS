
# **GARVIS (Gear Automated Remote Virtual Intelligent System)**

**GARVIS** is a microservices-based application that automates deployments and infrastructure management via CI/CD pipelines. The system is powered by intelligent watchdogs, offering seamless integration with Google Assistant for voice-controlled automation. This platform is designed to streamline DevOps workflows with advanced automation, monitoring, and infrastructure management.

## **Key Features**

- **Microservices Architecture**: Built using a microservices model to ensure scalability and modularity.
- **CI/CD Pipelines**: Automated deployments through GitHub Actions with integrated CI and CD pipelines.
- **Google Assistant Integration**: Voice control for triggering automation tasks, accessible through Google Nest devices.
- **Watchdogs**: Intelligent watchdogs monitor and interpret logs to automate DevOps tasks such as container restarts, health checks, and scaling.
- **Smart Monitoring**: Continuous monitoring of the infrastructure with automated responses to potential issues.
- **Kubernetes Ready**: Designed for container orchestration and management via Kubernetes, allowing for efficient scaling and resource allocation.

## **Project Structure**

- **`ai-service/`**: Microservice handling the AI integration for automated decision-making.
- **`log-watcher/`**: Service responsible for monitoring logs and triggering automation based on log analysis.
- **`ci-cd-automation/`**: Manages the CI/CD pipelines and orchestrates the deployment workflows.
- **`deploy.sh`**: Script to automate the deployment of the microservices using Docker and Docker Compose.

## **Installation and Setup**

### **Prerequisites**
1. **Docker**: Make sure Docker and Docker Compose are installed on your machine.
2. **Git**: Ensure you have Git installed for cloning the repository.
3. **Google Assistant Setup**: For voice control features, link GARVIS with your Google Assistant-enabled devices.

### **Steps to Install and Run**

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/garvis.git
   cd garvis
   ```

2. **Run the Deploy Script**:
   GARVIS can be deployed using the `deploy.sh` script, which will automatically pull the latest code, build the Docker containers, and start the services.
   ```bash
   ./deploy.sh
   ```

3. **Access the Services**:
   - AI Service: `http://localhost:5000`
   - Log Watcher: `http://localhost:5001`
   - CI/CD Automation: `http://localhost:5002`

4. **Monitor Containers**:
   To check the status of running containers, use the following command:
   ```bash
   docker ps
   ```

## **Usage**

### **Voice Commands (via Google Assistant)**
Once GARVIS is integrated with Google Assistant, you can issue voice commands such as:
- "Hey Google, deploy GARVIS."
- "Hey Google, show the status of GARVIS containers."
- "Hey Google, restart the AI service."

### **Automated Deployments**
The deployment is fully automated via CI/CD pipelines:
- Each push to the `develop` branch triggers the Continuous Integration (CI) pipeline, building and testing the containers.
- After a successful CI run, the Continuous Deployment (CD) pipeline is triggered to update the running services.

## **Contributing**

We welcome contributions to enhance the features and capabilities of GARVIS. Please follow the guidelines below:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Add feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a Pull Request.

## **License**

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
