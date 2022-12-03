package com.sandro.nativelib;

/**
 * 对应natieC-lib.h里的接口
 */
public class NativeCAgent {
    /**
     *
     * @return c返回一个字符串
     */
    public static native String stringFromCJNI();
}
