/**
 * AddCommand
 */
public class AddCommand implements Command{
    private Animal animal;
    private String command;
    
    public AddCommand(Animal animal, String command) {
        this.animal = animal;
        this.command = command;
    }

    @Override
    public void execute() {
        animal.addCommand(command);
        System.out.println(command + " has been taught to " + animal.getName() + ".");
    }
}

