

/**
 * TeachCommand
 */
public class TeachCommand implements Command{

       private Animal animal;
    private String newCommand;

    public TeachCommand(Animal animal, String newCommand) {
        this.animal = animal;
        this.newCommand = newCommand;
    }

    @Override
    public void execute() {
        animal.addCommand(newCommand);
        System.out.println(newCommand + " has been taught to " + animal.getName() + ".");
    }
}

