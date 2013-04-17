import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;
import com.tencent.qqpimsecure.ui.activity.SyncQQPimPasswordSettingsActivity;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

public final class aeo extends Handler
{
  public aeo(SyncQQAccountLoginActivity.a parama)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 100000:
    case 100001:
    case 100002:
    }
    while (true)
    {
      return;
      this.a.a();
      SyncQQAccountLoginActivity.a.a(this.a, SyncQQAccountLoginActivity.a.a(this.a).getText().toString(), SyncQQAccountLoginActivity.a.b(this.a).getChecked());
      SyncQQAccountLoginActivity.a.c(this.a).t(1);
      ha.a(SyncQQAccountLoginActivity.a.d(this.a), 2131427680);
      if ((!SyncQQAccountLoginActivity.a.e(this.a)) && (paramMessage.arg1 != 1003))
      {
        Intent localIntent = new Intent(SyncQQAccountLoginActivity.a.f(this.a), SyncQQPimPasswordSettingsActivity.class);
        localIntent.setFlags(67108864);
        SyncQQAccountLoginActivity.a.g(this.a).startActivity(localIntent);
        this.a.a.finish();
      }
      else
      {
        SyncQQAccountLoginActivity.a.h(this.a);
        continue;
        this.a.a();
        if (SyncQQAccountLoginActivity.a.e(this.a))
          nd.a().a(26180, ((Integer)paramMessage.obj).intValue());
        SyncQQAccountLoginActivity.a.a(this.a, ((Integer)paramMessage.obj).intValue());
        continue;
        Bitmap localBitmap = (Bitmap)paramMessage.obj;
        if ((SyncQQAccountLoginActivity.a.i(this.a) != null) && (localBitmap != null))
        {
          SyncQQAccountLoginActivity.a.i(this.a).setImageBitmap(localBitmap);
        }
        else if ((SyncQQAccountLoginActivity.a.i(this.a) != null) && (localBitmap == null))
        {
          SyncQQAccountLoginActivity.a.i(this.a).setImageResource(2130837950);
          ha.a(SyncQQAccountLoginActivity.a.j(this.a), 2131427613);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aeo
 * JD-Core Version:    0.6.2
 */