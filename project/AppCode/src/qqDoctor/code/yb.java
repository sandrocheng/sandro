import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.antitheft.IAntitheftTips;
import com.tencent.tmsecure.module.tools.SingletonManager;

public class yb
{
  private static yb c = null;
  private Context a;
  private AntitheftManager b;
  private ho d;
  private ki e;
  private yb.a f = new yb.a((byte)0);
  private lt g = new yc(this);
  private ContentObserver h = new yd(this, new Handler(Looper.getMainLooper()));

  private yb(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    this.b.setWebServerNum("1069070008");
    this.d = ho.a();
    this.e = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
  }

  public static yb a(Context paramContext)
  {
    if (c == null);
    try
    {
      if (c == null)
        c = new yb(paramContext);
      return c;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      op.a().a(this.g);
      this.a.getContentResolver().registerContentObserver(Uri.parse("content://sms"), true, this.h);
    }
    while (true)
    {
      return;
      op.a().b(this.g);
      this.a.getContentResolver().unregisterContentObserver(this.h);
    }
  }

  final class a
    implements IAntitheftTips
  {
    private a()
    {
    }

    public final Intent getLockPhoneIntent()
    {
      yb.e(yb.this).C(true);
      Intent localIntent = new Intent();
      localIntent.setFlags(268435456);
      localIntent.putExtra("sim_change", true);
      localIntent.setClass(yb.d(yb.this), PickproofLockActivity.class);
      return localIntent;
    }

    public final String tips4DeleteDataSuccess()
    {
      return yb.d(yb.this).getString(2131429358);
    }

    public final String tips4DeletingData()
    {
      return yb.d(yb.this).getString(2131429352);
    }

    public final String tips4GetPasswordFailed()
    {
      return yb.d(yb.this).getString(2131429360);
    }

    public final String tips4GetPasswordSuccess()
    {
      String str = yb.d(yb.this).getString(2131429366);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = yb.e(yb.this).bT();
      arrayOfObject[1] = yb.b(yb.this).getPassword();
      return String.format(str, arrayOfObject);
    }

    public final String tips4LocateFaild()
    {
      return yb.d(yb.this).getString(2131429355);
    }

    public final String tips4LocateSuccess()
    {
      return "";
    }

    public final String tips4Locating()
    {
      return yb.d(yb.this).getString(2131429353);
    }

    public final String tips4LockPhoneSuccess()
    {
      return yb.d(yb.this).getString(2131429350);
    }

    public final String tips4PasswordError()
    {
      return yb.d(yb.this).getString(2131429356);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yb
 * JD-Core Version:    0.6.2
 */