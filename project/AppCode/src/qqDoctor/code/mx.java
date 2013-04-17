import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tccdb.TccCryptor;
import java.util.Calendar;
import java.util.List;

public final class mx
{
  Context a = null;

  public mx(Context paramContext)
  {
    this.a = paramContext;
  }

  static void a(Context paramContext, String paramString)
  {
    try
    {
      String str1 = "imei:s" + ft.a(paramContext);
      new StringBuilder("imei:").append(str1).toString();
      String str2 = k.b(TccCryptor.encrypt(paramContext, str1.getBytes(), "O@(n$%^#%$RGHR(&*M<><".getBytes()));
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString + "&id=" + str2)));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static boolean a(String paramString)
  {
    boolean bool = false;
    int i = QQPimApplication.a().getSharedPreferences("SettingInfo", 0).getInt(paramString, 0);
    if (i <= 0)
    {
      int k = i + 1;
      QQPimApplication.a().getSharedPreferences("SettingInfo", 0).edit().putInt(paramString, k).commit();
    }
    do
    {
      return bool;
      bool = false;
    }
    while (i > 1);
    mx.a locala1 = new mx.a(9, 13, 10);
    mx.a locala2 = new mx.a(10, 17, 0);
    long l1 = System.currentTimeMillis();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(l1);
    localCalendar.set(2, 1 + localCalendar.get(2));
    new StringBuilder("month:").append(localCalendar.get(2)).append("day:").append(localCalendar.get(5)).append("Hour").append(localCalendar.get(10)).toString();
    long l2 = localCalendar.getTimeInMillis();
    localCalendar.set(locala1.a, locala1.b, locala1.c, locala1.d, 0);
    long l3 = localCalendar.getTimeInMillis();
    localCalendar.set(locala2.a, locala2.b, locala2.c, locala2.d, 0);
    long l4 = localCalendar.getTimeInMillis();
    if ((l3 <= l2) && (l2 <= l4));
    for (int j = 1; ; j = 0)
    {
      bool = false;
      if (j == 0)
        break;
      bool = true;
      break;
    }
  }

  public final void a(List<mx.b> paramList)
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(2131428965);
    localDialog.setMessage(2131428966);
    if (paramList != null)
      for (int i = 0; i < paramList.size(); i++)
      {
        mx.b localb = (mx.b)paramList.get(i);
        localDialog.setPositiveButton(localb.a, new my(localb, localDialog), localb.b);
      }
    localDialog.show();
  }

  public static final class a
  {
    public int a = 2011;
    public int b;
    public int c;
    public int d;

    a(int paramInt1, int paramInt2, int paramInt3)
    {
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramInt3;
    }
  }

  public abstract class b
  {
    public int a;
    public int b = 2;

    b(int arg2)
    {
      int i;
      this.b = i;
      this.a = this$1;
    }

    public abstract void a(Dialog paramDialog);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mx
 * JD-Core Version:    0.6.2
 */