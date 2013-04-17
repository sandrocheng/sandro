package com.tencent.qqpimsecure.uilib.view.desktop;

public class EasingType
{
  public static enum Type
  {
    static
    {
      INOUT = new Type("INOUT", 2);
      Type[] arrayOfType = new Type[3];
      arrayOfType[0] = IN;
      arrayOfType[1] = OUT;
      arrayOfType[2] = INOUT;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.EasingType
 * JD-Core Version:    0.6.2
 */