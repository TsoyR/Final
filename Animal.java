import java.util.ArrayList;
import java.util.List;

/**
 * Animal
 */
public class Animal {

    private String name;
    private String animalType;
    private List<String> commands;

    public Animal (String name, String animalType){
        this.name = name;
        this.animalType = animalType;
        this.commands = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public String getAnimalType() {
        return animalType;
    }

    public void addCommand(String command) {
        commands.add(command);
    }

    public List<String> getCommands() {
        return commands;
    }
}