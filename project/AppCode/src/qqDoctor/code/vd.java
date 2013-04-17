import android.content.Context;
import android.content.Intent;
import android.view.WindowManager;
import com.tencent.qqpimsecure.uilib.view.PermissionTipDialogView;

public final class vd
{
  private static boolean d = false;
  private PermissionTipDialogView a = null;
  private WindowManager b;
  private Context c;

  public vd(Context paramContext)
  {
    this.c = paramContext;
    this.b = ((WindowManager)paramContext.getSystemService("window"));
  }

  public final void a(String paramString, Intent paramIntent)
  {
    if ((!d) && (paramString.equals(PermissionTipDialogView.PERMISSION_DIALOG_ADD)))
      this.a = new PermissionTipDialogView(this.c);
    try
    {
      this.a.getIntentInfo(paramIntent);
      this.b.addView(this.a, kg.e);
      d = true;
      if ((d) && (paramString.equals(PermissionTipDialogView.PERMISSION_DIALOG_DELETE)))
      {
        this.b.removeView(this.a);
        d = false;
      }
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        localRuntimeException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vd
 * JD-Core Version:    0.6.2
 */