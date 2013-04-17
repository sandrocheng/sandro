import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.qqpimsecure.ui.activity.WebUIActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class ds
{
  private static boolean a = false;

  public static int a(Activity paramActivity, String paramString, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("TASK_ID", paramInt);
    int i = a.a(paramActivity, paramString, localBundle);
    if ((i == 4) || (i == 5))
    {
      if (a)
        break label122;
      Dialog localDialog = new Dialog(paramActivity);
      localDialog.setTitle(paramActivity.getString(2131428561));
      localDialog.setMessage(paramActivity.getString(2131429542));
      localDialog.setPositiveButton(2131427397, new dt(paramActivity, localDialog), 1);
      localDialog.setNegativeButton(2131427379, new du(localDialog, paramString, paramActivity), 2);
      localDialog.show();
      a = true;
    }
    while (true)
    {
      return i;
      label122: c(paramString, paramActivity);
    }
  }

  public static void a(String paramString, Context paramContext)
  {
    if (cw.d().e() != null)
      paramString = paramString + cw.d().e();
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.setClass(paramContext, WebUIActivity.class);
    localIntent.putExtra("extra_url", paramString);
    paramContext.startActivity(localIntent);
  }

  private static void c(String paramString, Context paramContext)
  {
    if (cw.d().e() != null)
      paramString = paramString + cw.d().e();
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ds
 * JD-Core Version:    0.6.2
 */