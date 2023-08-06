public class Counter implements AutoCloseable {
    private int value;

    public Counter() {
        this.value = 0;
    }

    public void add() {
        value++;
    }

    public int getValue() {
        return value;
    }

    @Override
    public void close() {
        if (value > 0) {
            throw new IllegalStateException("Resource was not properly closed.");
        }
    }
}
