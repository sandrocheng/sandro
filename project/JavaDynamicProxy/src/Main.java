public class Main {
    public static void main(String[] args) {
        BigStar mStar = new BigStar("john");
        Star proxy = ProxyUtil.createProxy(mStar);
        proxy.dance();
        System.out.println(proxy.sing("《yesterday》"));
    }
}