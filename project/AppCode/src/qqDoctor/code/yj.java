import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceActivity;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeGridActivity;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionControlActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordEnterActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPswGuideActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.VerifyPrivacyPasswordActivity;

public final class yj
{
  private Context a;
  private ho b;

  public yj(Context paramContext)
  {
    this.a = paramContext;
    this.b = ho.a();
  }

  public static void a(Context paramContext, int paramInt)
  {
    Intent localIntent = null;
    switch (paramInt)
    {
    case 2:
    default:
    case 1:
    case 3:
    case 4:
    }
    while (true)
    {
      if (localIntent != null)
      {
        paramContext.startActivity(localIntent);
        px.a(paramContext).b();
        pc.b().e();
      }
      return;
      localIntent = new Intent(paramContext, PermissionControlActivity.class);
      continue;
      localIntent = new Intent(paramContext, SecureSpaceActivity.class);
      aai.a().b();
      continue;
      localIntent = new Intent(paramContext, FileSafeGridActivity.class);
    }
  }

  public final void a()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    try
    {
      this.a.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(int paramInt, String paramString)
  {
    int i = 1;
    String str1 = this.b.cd();
    int j = this.b.cl();
    int k;
    nd localnd;
    if ((str1 != null) && (!str1.equals("")))
    {
      k = i;
      if ((k == 0) || (j != 0))
        break label143;
      localnd = nd.a();
      if ((this.b.cj() != i) || (!this.b.cH()))
        break label98;
      a.a(this.a, paramInt, paramString);
      localnd.a(26428);
    }
    while (true)
    {
      return;
      k = 0;
      break;
      label98: Context localContext3 = this.a;
      Intent localIntent3 = new Intent(localContext3, PrivacyPatternPasswordEnterActivity.class);
      a.a(localIntent3, paramInt, -1, paramString);
      localContext3.startActivity(localIntent3);
      localnd.a(26427);
      continue;
      label143: ho localho = ho.a();
      String str2 = localho.cd();
      String str3 = localho.n();
      int m;
      if ((str2 != null) && (!str2.equals("")))
      {
        m = i;
        label180: if (m == 0)
          if ((str3 == null) || (str3.equals("")))
            break label257;
      }
      label257: for (int n = i; ; n = 0)
      {
        if (n != 0)
          i = 0;
        if (i == 0)
          break label263;
        Context localContext2 = this.a;
        Intent localIntent2 = new Intent(localContext2, PrivacyPswGuideActivity.class);
        a.a(localIntent2, paramInt, -1, null);
        localContext2.startActivity(localIntent2);
        break;
        m = 0;
        break label180;
      }
      label263: Context localContext1 = this.a;
      Intent localIntent1 = new Intent(localContext1, VerifyPrivacyPasswordActivity.class);
      a.a(localIntent1, paramInt, -1, paramString);
      localContext1.startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yj
 * JD-Core Version:    0.6.2
 */