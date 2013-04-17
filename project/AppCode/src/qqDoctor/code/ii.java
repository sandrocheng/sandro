import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import com.tencent.qqpimsecure.service.QQPimApplication;

public final class ii
{
  private static ii d;
  public SharedPreferences a = this.c.getSharedPreferences("ipcall", 0);
  public SharedPreferences.Editor b = this.a.edit();
  private Context c = QQPimApplication.a();

  private ii()
  {
    this.c.getResources().getString(2131428377);
  }

  public static ii a()
  {
    try
    {
      if (d == null)
        d = new ii();
      ii localii = d;
      return localii;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    String str = paramString1 + ";" + paramString2;
    this.b.putString("noarea", str).commit();
  }

  public final void b(String paramString1, String paramString2)
  {
    String str = paramString1 + ";" + paramString2;
    this.b.putString("area", str).commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ii
 * JD-Core Version:    0.6.2
 */