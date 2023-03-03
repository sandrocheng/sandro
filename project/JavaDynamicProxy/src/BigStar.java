/**
 * 定义一个需要被代理的类
 */
public class BigStar implements Star {
    private String name;

    public BigStar(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public void dance() {
        System.out.println(this.name + " start dancing");
    }

    @Override
    public String sing(String songName) {
        System.out.println(this.name + " start singing " + songName);
        return "sing finish";
    }
}
