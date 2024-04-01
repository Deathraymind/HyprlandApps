## Hyprland Apps Repository Documentation

Welcome to the Hyprland Apps repository! This repository contains custom applications along with their dependencies and installation scripts. Each application has its own dedicated wiki for additional information, along with credits for its dependencies.

### Cloning the Repository

To clone this repository, follow these steps:

```bash
git clone https://github.com/Deathraymind/HyprlandApps.git
cd HyprlandApps
```

After navigating into the repository directory, you will find folders for each app.

### Installing an Application

To install an application, follow these steps:

1. Navigate into the folder of the desired application. For example, if you want to install "LookingGlass", use the following command:

   ```bash
   cd LookingGlass
   ```

2. List the contents of the directory to find the installation script. For LookingGlass, it would be `install-looking-glass.sh`:

   ```bash
   ls
   ```

3. Execute the installation script. If you encounter permission issues, grant execution permission using `chmod +x`:

   ```bash
   ./install-looking-glass.sh
   ```

   If you encounter permission issues, use:

   ```bash
   chmod +x install-looking-glass.sh
   ./install-looking-glass.sh
   ```

### Wiki and Credits

For detailed information about each application and credits for dependencies, please refer to the respective wiki associated with each app.

