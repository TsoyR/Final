import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class AnimalRegistry {
    private Map<String, Animal> animals;
    private Counter counter; // Добавляем счетчик как член класса

    public AnimalRegistry() {
        this.animals = new HashMap<>();
    }

    public void addAnimal(String name, String animalType) {
        Animal animal = new Animal(name, animalType);
        animals.put(name, animal);
        counter.add(); // Увеличиваем счетчик при добавлении животного
        System.out.println(name + " has been added to the registry.");
    }

    public void classifyAnimal(String name) {
        Animal animal = animals.get(name);
        if (animal != null) {
            System.out.println(name + " is classified as a " + animal.getAnimalType() + ".");
        } else {
            System.out.println(name + " not found in the registry.");
        }
    }

    public void showCommands(String name) {
        Animal animal = animals.get(name);
        if (animal != null) {
            System.out.println(animal.getName() + " can perform the following commands:");
            for (String command : animal.getCommands()) {
                System.out.println("- " + command);
            }
        } else {
            System.out.println(name + " not found in the registry.");
        }
    }

    public void teachCommand(String name, String command) {
        Animal animal = animals.get(name);
        if (animal != null) {
            Command teachCommand = new TeachCommand(animal, command);
            teachCommand.execute();
        } else {
            System.out.println(name + " not found in the registry.");
        }
    }

    public void addCommandToAnimal(String name, String command) {
        Animal animal = animals.get(name);
        if (animal != null) {
            Command addCommand = new AddCommand(animal, command);
            addCommand.execute();
        } else {
            System.out.println(name + " not found in the registry.");
        }
    }

    public static void main(String[] args) {
        AnimalRegistry registry = new AnimalRegistry();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\n==== Animal Registry ====");
            System.out.println("1. Add a new animal");
            System.out.println("2. Classify an animal");
            System.out.println("3. Show commands for an animal");
            System.out.println("4. Teach new command to an animal");
            System.out.println("5. Exit");
            System.out.print("Enter your choice: ");
            int choice = scanner.nextInt();
            scanner.nextLine(); // Consume the newline character

            switch (choice) {
                case 1:
                    System.out.print("Enter the animal's name: ");
                    String name = scanner.nextLine();
                    System.out.print("Enter the animal's type: ");
                    String animalType = scanner.nextLine();
                    registry.addAnimal(name, animalType);
                    break;

                case 2:
                    System.out.print("Enter the animal's name: ");
                    String classifyName = scanner.nextLine();
                    registry.classifyAnimal(classifyName);
                    break;

                case 3:
                    System.out.print("Enter the animal's name: ");
                    String showCommandsName = scanner.nextLine();
                    registry.showCommands(showCommandsName);
                    break;

                case 4:
                    System.out.print("Enter the animal's name: ");
                    String teachName = scanner.nextLine();
                    System.out.print("Enter the new command: ");
                    String newCommand = scanner.nextLine();
                    registry.teachCommand(teachName, newCommand);
                    break;

                case 5:
                    System.out.println("Exiting the program.");
                    scanner.close();
                    System.exit(0);

                default:
                    System.out.println("Invalid choice. Please choose a valid option.");
                    break;
            }
        }
    }
}







