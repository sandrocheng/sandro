import QQPIM.VirusClientInfo;
import android.content.Context;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.concurrent.atomic.AtomicReference;

public final class fp
{
  static
  {
    String str = TMSApplication.getStrFromEnvMap("virus_scan_libname");
    a.a(TMSApplication.getApplicaionContext(), str);
  }

  private static native int a(Context paramContext, String paramString, AtomicReference<byte[]> paramAtomicReference);

  public static VirusClientInfo a(Context paramContext, String paramString)
  {
    UniAttribute localUniAttribute;
    if (paramString != null)
    {
      localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      localUniAttribute.useVersion3();
      AtomicReference localAtomicReference = new AtomicReference();
      if (a(paramContext, paramString, localAtomicReference) == 0)
      {
        byte[] arrayOfByte = (byte[])localAtomicReference.get();
        if (arrayOfByte != null)
          localUniAttribute.decode(arrayOfByte);
      }
    }
    for (VirusClientInfo localVirusClientInfo = (VirusClientInfo)localUniAttribute.getByClass("vci", new VirusClientInfo()); ; localVirusClientInfo = null)
      return localVirusClientInfo;
  }

  protected final void finalize()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fp
 * JD-Core Version:    0.6.2
 */