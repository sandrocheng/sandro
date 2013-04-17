import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.permission.RestartTipDialog;
import com.tencent.tmsecure.module.permission.PermissionManager.IInitStepObserver;

public final class xg
  implements PermissionManager.IInitStepObserver
{
  public static xg.a a = new xg.a();
  public int b = -1;
  public boolean c;
  private boolean d = true;
  private boolean e = false;
  private String f;
  private boolean g = false;
  private boolean h = false;

  public xg(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.g = paramBoolean2;
    this.h = paramBoolean1;
    this.e = false;
  }

  public final boolean a()
  {
    return this.e;
  }

  public final boolean onReached(int paramInt, boolean paramBoolean)
  {
    this.b = paramInt;
    Context localContext;
    if (paramInt == 2)
    {
      this.e = true;
      if (this.d)
      {
        localContext = QQPimApplication.a();
        if (this.f == null)
        {
          if (!this.h)
            break label136;
          this.f = localContext.getString(2131429031);
        }
        String str = this.f;
        Intent localIntent = new Intent();
        localIntent.setClass(localContext, RestartTipDialog.class);
        localIntent.putExtra("reboot_tips", str);
        localIntent.setFlags(402653184);
        localContext.startActivity(localIntent);
      }
    }
    while (true)
    {
      synchronized (a)
      {
        try
        {
          a.wait();
          this.c = a.a;
          bool = this.c;
          return bool;
          label136: if (this.g)
          {
            this.f = localContext.getString(2131429032);
            break;
          }
          this.f = "";
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
          continue;
        }
      }
      this.c = paramBoolean;
      boolean bool = this.c;
    }
  }

  public static final class a
  {
    public boolean a = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xg
 * JD-Core Version:    0.6.2
 */