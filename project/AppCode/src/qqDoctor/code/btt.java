import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.Base64;

public final class btt
{
  public btl a = new btl("AntitheftProperty");

  public final String a(boolean paramBoolean)
  {
    String str = this.a.a("password", null);
    if (str == null)
      str = null;
    while (true)
    {
      return str;
      if (!paramBoolean)
      {
        byte[] arrayOfByte = Base64.decode(str.getBytes(), 0);
        str = new String(TccCryptor.decrypt(TMSApplication.getApplicaionContext(), arrayOfByte, null));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btt
 * JD-Core Version:    0.6.2
 */