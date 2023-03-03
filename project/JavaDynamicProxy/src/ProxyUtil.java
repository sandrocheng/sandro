import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * 创建代理工具类
 */
public class ProxyUtil {
    /**
     * 创建一个BigStar的代理
     * @param bigStar 需要代理的对象
     * @return 代理实例
     */
    public static Star createProxy(BigStar bigStar){
        Star star = (Star) Proxy.newProxyInstance(
                ProxyUtil.class.getClassLoader(),//使用当前类作为类加载器，因为是当前类把代理类加载到内存中去的
                new Class[]{Star.class},//可以是多个接口，每个接口中的具体方法都会在代理对象被调用的时候通过InvocationHandler回调回来
                                        //在回调接口中实现代理需要做的事情。
                new InvocationHandler() {

                    /**
                     * 指定代理需要做的事情
                     * @param proxy 代理的对象
                     *
                     * @param method 要运行的方法
                     *
                     * @param args 代理对象被调用时的实参
                     *
                     * @return
                     * @throws Throwable
                     */
                    @Override
                    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
                        //实现代理需要做的任务
                        if("sing".equals(method.getName())){
                            System.out.println("proxy sing working ...");
                        }else if("dance".equals(method.getName())){
                            System.out.println("proxy dance working ...");
                        }
                        //调用实际对象对应的接口实现
                        return method.invoke(bigStar,args);
                    }
                });
        return star;
    }
}
