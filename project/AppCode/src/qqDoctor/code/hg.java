import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.qqpimsecure.service.QQPimApplication;

public final class hg
{
  public final String a = this.b.getPackageName();
  private Context b = QQPimApplication.a();

  private int b()
  {
    try
    {
      i = this.b.getPackageManager().getPackageInfo(this.a, 16384).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        int i = -1;
      }
    }
  }

  public final boolean a()
  {
    int i = b();
    int j = ho.a().S();
    if (i != j)
      ho.a().k(j);
    ho.a().j(i);
    boolean bool = false;
    if (j > 0)
    {
      bool = false;
      if (i != j)
      {
        ho.a().T(false);
        bool = true;
      }
    }
    return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hg
 * JD-Core Version:    0.6.2
 */