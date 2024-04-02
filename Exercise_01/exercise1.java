public class exercise1 {
    public static class Duck {
        private String name;
        private boolean isQuack;
        private boolean isSwim;
        private boolean isFly;

        public Duck(){}

        public Duck(String name) {
            this.name = name;
            this.isQuack = false;
            this.isSwim = false;
            this.isFly = false;
        }

        public Duck(String name, boolean isQuack, boolean isSwim, boolean isFly) {
            this.name = name;
            this.isQuack = isQuack;
            this.isSwim = isSwim;
            this.isFly = isFly;
        }

        public void quack() {
            if (isQuack) {
                System.out.printf("%s CAN quack%n", getName());
            } else {
                System.out.printf("%s CANNOT quack%n", getName());
            }
        }

        public void swim() {
            if (isSwim) {
                System.out.printf("%s CAN swim%n", getName());
            } else {
                System.out.printf("%s CANNOT swim%n", getName());
            }
        }

        public void fly() {
            if (isFly) {
                System.out.printf("%s CAN fly%n", getName());
            } else {
                System.out.printf("%s CANNOT fly%n", getName());
            }
        }

        public void display(){
            System.out.println("Name: " + getName());
            quack();
            swim();
            fly();
        }

        public String getName(){
            return this.name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public boolean getIsQuack(){
            return this.isQuack;
        }

        public void setQuack(boolean quack){
            this.isQuack = quack;
        }

        public boolean getIsSwim(){
            return this.isSwim;
        }

        public void setSwim(boolean swim){
            this.isSwim = swim;
        }

        public boolean getIsFly(){
            return this.isFly;
        }

        public void setFly(boolean fly){
            this.isFly = fly;
        }
    }

    public static class MallardDuck extends Duck {
        public MallardDuck() {
            super("Mallard",true, true, true);
        }
        @Override
        public void setName(String name) {
        }

        @Override
        public void setSwim(boolean swim){
        }

        @Override
        public void setQuack(boolean quack) {
        }

        @Override
        public void setFly(boolean fly){
        }
    }

    public static class RedHeadDuck extends Duck {
        public RedHeadDuck() {
            super("RedHead",true, true, true);
        }

        @Override
        public void setName(String name) {
        }

        @Override
        public void setSwim(boolean swim){
        }

        @Override
        public void setQuack(boolean quack) {
        }

        @Override
        public void setFly(boolean fly){
        }
    }

    public static class RubberDuck extends Duck {
        public RubberDuck() {
            super("Rubber",true, true, false);
        }

        @Override
        public void setName(String name) {
        }

        @Override
        public void setSwim(boolean swim){
        }

        @Override
        public void setQuack(boolean quack) {
        }

        @Override
        public void setFly(boolean fly){
        }
    }


    public static void main(String[] args) {
        Duck genericDuck = new Duck("Generic Duck");
        MallardDuck mallardDuck = new MallardDuck();
        RedHeadDuck redHeadDuck = new RedHeadDuck();
        RubberDuck rubberDuck = new RubberDuck();

        System.out.println("Generic Duck:");
        genericDuck.display();
        System.out.println();

        System.out.println("Mallard Duck:");
        mallardDuck.display();
        System.out.println();

        System.out.println("RedHead Duck:");
        redHeadDuck.display();
        System.out.println();

        System.out.println("Rubber Duck:");
        rubberDuck.display();
    }
}
