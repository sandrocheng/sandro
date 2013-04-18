package kdebug;

import com.keniu.security.h.a;
import java.util.ArrayList;
import java.util.HashMap;

public class KJniAssemble
{
  static
  {
    a.a("KAssemble");
  }

  private static void a()
  {
  }

  public native byte[] GetFirstMultipart(String paramString);

  public native byte[] GetFirstMultipart2(String paramString);

  public native byte[] GetSign(String paramString);

  public native Object[] GetSign2(String[] paramArrayOfString, boolean paramBoolean);

  public native byte[] GetSign3(String[] paramArrayOfString, ArrayList paramArrayList, HashMap paramHashMap, boolean paramBoolean);

  public native byte[] GetSign4(String[] paramArrayOfString, ArrayList paramArrayList, HashMap paramHashMap, boolean[] paramArrayOfBoolean);

  public native void dispHelloWorld();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     kdebug.KJniAssemble
 * JD-Core Version:    0.6.2
 */