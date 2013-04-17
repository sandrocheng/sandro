package com.tencent.mobileqq.app;

import com.tencent.tmsecure.utils.SDKUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public final class ScreenShot
{
  static
  {
    System.loadLibrary("snapcore");
  }

  public static ByteBufferWrap createByteBufferWrap(ByteBuffer paramByteBuffer)
  {
    if (SDKUtil.getSDKVersion() >= 14);
    for (Object localObject = new ByteBufferFor4X(paramByteBuffer); ; localObject = new ByteBufferFor2X(paramByteBuffer))
      return localObject;
  }

  public static native int snapScreen(int paramInt1, int paramInt2);

  static class ByteBufferFor2X
    implements ScreenShot.ByteBufferWrap
  {
    private static Method mGetAddressMethod = null;
    private ByteBuffer mData;

    public ByteBufferFor2X(ByteBuffer paramByteBuffer)
    {
      this.mData = paramByteBuffer;
    }

    public ByteBuffer bytebuffer()
    {
      return this.mData;
    }

    public int getAddress()
    {
      try
      {
        if (mGetAddressMethod == null)
        {
          Method localMethod = this.mData.getClass().getDeclaredMethod("getAddress", new Class[0]);
          mGetAddressMethod = localMethod;
          localMethod.setAccessible(true);
        }
        int j = ((Integer)mGetAddressMethod.invoke(this.mData, new Object[0])).intValue();
        i = j;
        return i;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          int i = 0;
        }
      }
    }
  }

  static class ByteBufferFor4X
    implements ScreenShot.ByteBufferWrap
  {
    private static Field mAddressFiled;
    private static Field mBlockFiled;
    private ByteBuffer mData;

    public ByteBufferFor4X(ByteBuffer paramByteBuffer)
    {
      this.mData = paramByteBuffer;
    }

    public ByteBuffer bytebuffer()
    {
      return this.mData;
    }

    public int getAddress()
    {
      try
      {
        if (mBlockFiled == null)
        {
          Field localField1 = Buffer.class.getDeclaredField("block");
          mBlockFiled = localField1;
          localField1.setAccessible(true);
          Field localField2 = Class.forName("java.nio.MemoryBlock").getDeclaredField("address");
          mAddressFiled = localField2;
          localField2.setAccessible(true);
        }
        Object localObject = mBlockFiled.get(this.mData);
        int j = mAddressFiled.getInt(localObject);
        i = j;
        return i;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          int i = 0;
        }
      }
    }
  }

  public static abstract interface ByteBufferWrap
  {
    public abstract ByteBuffer bytebuffer();

    public abstract int getAddress();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.mobileqq.app.ScreenShot
 * JD-Core Version:    0.6.2
 */