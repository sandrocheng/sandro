import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumberList;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCity;
import com.tencent.tmsecure.module.phoneservice.IpDialProvinceCityList;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;

public final class bxl extends BaseManager
{
  public btl a;
  public IpDialManagerSetting b;
  public LocationManager c;

  private IpDialManagerSetting b()
  {
    IpDialManagerSetting localIpDialManagerSetting = new IpDialManagerSetting();
    String str = this.a.a("ip_dial_setting", null);
    if (str != null);
    try
    {
      int i = str.length() / 2;
      byte[] arrayOfByte = new byte[i];
      char[] arrayOfChar = str.toCharArray();
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(arrayOfByte);
          ObjectInputStream localObjectInputStream = new ObjectInputStream(localByteArrayInputStream);
          localIpDialManagerSetting.copyFrom((IpDialManagerSetting)localObjectInputStream.readObject());
          localObjectInputStream.close();
          localByteArrayInputStream.close();
          a();
          return localIpDialManagerSetting;
        }
        int k = j << 1;
        arrayOfByte[j] = ((byte)((byte)"0123456789ABCDEF".indexOf(arrayOfChar[k]) << 4 | (byte)"0123456789ABCDEF".indexOf(arrayOfChar[(k + 1)])));
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  public final String a(String paramString)
  {
    String str = this.b.getIpHeader();
    if ((paramString != null) && (str != null) && (!paramString.startsWith(str)))
      paramString = str + paramString;
    return paramString;
  }

  public final void a()
  {
    new StringBuilder("SETTING Dial Mode: ").append(this.b.getIpDialMode()).toString();
    new StringBuilder("SETTING Ip Head: ").append(this.b.getIpHeader()).toString();
    new StringBuilder("SETTING Local Phone:").append(this.b.getLocalPhoneLocation().getProvince()).append(this.b.getLocalPhoneLocation().getCity()).toString();
    new StringBuilder("SETTING Excluded Area: ").append(this.b.getExcludedAreaList().listToString()).toString();
    new StringBuilder("SETTING Excluded Phone: ").append(this.b.getExcludedPhoneNumberList().listToString()).toString();
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new btl("IpDialProperty");
    this.c = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    this.b = new IpDialManagerSetting();
    this.b.copyFrom(b());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxl
 * JD-Core Version:    0.6.2
 */