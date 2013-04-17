import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.List;

public final class sy
{
  public Context a;
  boolean b;
  hi c;
  jp d;
  ki e;
  vk f;
  Dialog g;
  Dialog h;
  boolean i;
  boolean j = false;
  int k = 0;
  Handler l = new sz(this, Looper.getMainLooper());

  sy(Activity paramActivity, boolean paramBoolean, hi paramhi, jp paramjp)
  {
    this.a = paramActivity;
    this.b = paramBoolean;
    this.c = paramhi;
    this.d = paramjp;
    this.e = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.f = new vk(paramActivity, null);
  }

  public static sy a(Activity paramActivity)
  {
    return new sy(paramActivity, true, new hi(1), new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts"));
  }

  public static sy b(Activity paramActivity)
  {
    return new sy(paramActivity, false, new hi(0), new jp("smslog", "mms_pdu", "mms_parts"));
  }

  public final void a(int paramInt, TelephonyEntity paramTelephonyEntity, dv paramdv)
  {
    String str1 = this.a.getString(2131427340);
    String str2 = this.a.getString(2131427854);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(str1);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131427397, new tt(this, paramInt, paramTelephonyEntity, paramdv, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new tx(localDialog), 2);
    localDialog.show();
  }

  public final void a(int paramInt, dv paramdv)
  {
    String str1 = this.a.getString(2131427376);
    String str2 = this.a.getString(2131427855);
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    }
    while (true)
    {
      String str3 = str2 + "?";
      Dialog localDialog = new Dialog(this.a);
      localDialog.setIcon(2130837786);
      localDialog.setTitle(str1);
      localDialog.setMessage(str3);
      localDialog.setPositiveButton(2131427408, new ua(this, paramInt, paramdv, localDialog), 2);
      localDialog.setNegativeButton(2131427409, new ub(localDialog), 2);
      localDialog.show();
      return;
      str2 = str2 + this.a.getString(2131427385);
      continue;
      str2 = str2 + this.a.getString(2131427389);
    }
  }

  public final void a(String paramString, dv paramdv)
  {
    new StringBuilder("showRestoreLogsDialog ").append(paramString).toString();
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(this.a.getString(2131428665));
    localDialog.setMessage(this.a.getString(2131428666) + paramString + this.a.getString(2131428667));
    localDialog.setPositiveButton(2131427395, new te(this, paramString, paramdv, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new tg(localDialog), 2);
    localDialog.show();
  }

  public final void a(String paramString1, String paramString2, int paramInt, vk.a parama, dv paramdv)
  {
    String str1;
    if (paramInt == 0)
      str1 = this.a.getString(2131427728);
    for (String str2 = this.a.getString(2131427818); ; str2 = this.a.getString(2131427817))
    {
      Dialog localDialog = new Dialog(this.a);
      localDialog.setTitle(str1);
      localDialog.setMessage(str2);
      localDialog.setPositiveButton(2131427397, new uc(this, paramString1, paramString2, paramInt, parama, paramdv, localDialog), 1);
      localDialog.setNegativeButton(2131427379, new ue(localDialog), 2);
      localDialog.show();
      return;
      str1 = this.a.getString(2131427727);
    }
  }

  public final void a(List<?> paramList, dv paramdv)
  {
    String str1 = this.a.getString(2131427340);
    String str2 = this.a.getString(2131427854);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(str1);
    localDialog.setMessage(str2);
    localDialog.setPositiveButton(2131427397, new ty(this, 1, paramList, paramdv, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new tz(localDialog), 2);
    localDialog.show();
  }

  public final void a(List<String> paramList, boolean paramBoolean)
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(this.a.getString(2131428665));
    if (paramBoolean)
      localDialog.setMessage(this.a.getString(2131428675));
    while (true)
    {
      localDialog.setPositiveButton(2131427395, new th(this, paramList, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new tj(localDialog), 2);
      localDialog.show();
      return;
      localDialog.setMessage(this.a.getString(2131428674));
    }
  }

  public final void a(List<String> paramList, boolean paramBoolean, dv paramdv)
  {
    if (paramList == null);
    while (true)
    {
      return;
      for (int m = -1 + paramList.size(); m >= 0; m--)
        if (((String)paramList.get(m)).indexOf('*') >= 0)
          paramList.remove(m);
      if (paramList.size() != 0)
        if (paramBoolean)
        {
          new tw(this, paramList, paramdv).start();
        }
        else
        {
          Dialog localDialog = new Dialog(this.a);
          localDialog.setTitle(this.a.getString(2131428680));
          localDialog.setMessage(this.a.getString(2131428732));
          localDialog.setPositiveButton(2131427396, new tu(this, paramList, paramdv, localDialog), 1);
          localDialog.setNegativeButton(2131427379, new tv(localDialog), 2);
          localDialog.show();
        }
    }
  }

  public final boolean a(int paramInt, TelephonyEntity paramTelephonyEntity)
  {
    boolean bool = false;
    switch (paramInt)
    {
    default:
    case 1:
    case 0:
    }
    while (true)
    {
      return bool;
      bool = this.c.c((ky)paramTelephonyEntity);
      continue;
      bool = this.d.b((mk)paramTelephonyEntity);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sy
 * JD-Core Version:    0.6.2
 */