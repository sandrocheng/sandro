import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.tmsecure.common.TMSApplication;

public final class ex
{
  public String a;
  public SharedPreferences.Editor b;
  public SharedPreferences c;

  public ex(String paramString)
  {
    this.a = paramString;
    this.c = TMSApplication.getApplicaionContext().getSharedPreferences("TMSProperties", 0);
    this.b = this.c.edit();
  }

  public final String a(String paramString1, String paramString2)
  {
    return this.c.getString(this.a + "." + paramString1, paramString2);
  }

  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.b.putString(this.a + "." + paramString1, paramString2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ex
 * JD-Core Version:    0.6.2
 */