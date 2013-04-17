import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.lbsapi.model.QLBSPosition;

public final class iy
{
  public SharedPreferences a;
  public SharedPreferences.Editor b;

  public iy(Context paramContext)
  {
    this.a = paramContext.getSharedPreferences("DevNetworkData", 0);
    this.b = this.a.edit();
  }

  public final QLBSPosition a()
  {
    String str = this.a.getString("netword_locate_str", null);
    if (str != null);
    while (true)
    {
      try
      {
        String[] arrayOfString = str.split(",");
        localQLBSPosition = new QLBSPosition();
        localQLBSPosition.setProvince(arrayOfString[0]);
        localQLBSPosition.setCity(arrayOfString[1]);
        return localQLBSPosition;
      }
      catch (Exception localException)
      {
      }
      QLBSPosition localQLBSPosition = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     iy
 * JD-Core Version:    0.6.2
 */