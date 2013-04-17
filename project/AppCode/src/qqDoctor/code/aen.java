import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.SyncMobileManualActivateActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity.a;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

public final class aen
  implements View.OnClickListener
{
  public aen(SyncMobileRegisterActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    if (SyncMobileRegisterActivity.a(this.a.a))
    {
      String str3 = SyncMobileRegisterActivity.a.c(this.a).getText().toString();
      if ((str3 == null) || (str3.length() <= 0))
        ha.b(SyncMobileRegisterActivity.a.d(this.a), 2131427611);
    }
    while (true)
    {
      return;
      if (!SyncMobileRegisterActivity.a.e(this.a).getChecked())
      {
        ha.b(SyncMobileRegisterActivity.a.f(this.a), 2131428860);
      }
      else
      {
        this.a.a(false);
        SyncMobileRegisterActivity.b(this.a.a);
        continue;
        String str1 = SyncMobileRegisterActivity.a.g(this.a).getText().toString();
        String str2 = SyncMobileRegisterActivity.a.h(this.a).getText().toString();
        if ((str1 == null) || (str1.length() < 6) || (str1.length() > 16))
        {
          ha.b(SyncMobileRegisterActivity.a.i(this.a), 2131427615);
        }
        else if (-1 != str1.indexOf(" "))
        {
          ha.b(SyncMobileRegisterActivity.a.j(this.a), 2131427616);
        }
        else if (!str1.equals(str2))
        {
          ha.b(SyncMobileRegisterActivity.a.k(this.a), 2131427617);
        }
        else
        {
          byte[] arrayOfByte = a.a(str1, "DFG#$%^#%$RGHR(&*M<><".getBytes());
          Intent localIntent = new Intent(SyncMobileRegisterActivity.a.l(this.a), SyncMobileManualActivateActivity.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("intent_key_mobile_area_code", SyncMobileRegisterActivity.a.m(this.a));
          localBundle.putString("intent_key_mobile_num", SyncMobileRegisterActivity.a.c(this.a).getText().toString());
          localBundle.putByteArray("intent_key_mobile_pwd", arrayOfByte);
          localIntent.putExtras(localBundle);
          localIntent.setFlags(67108864);
          this.a.a.startActivity(localIntent);
          this.a.a.finish();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aen
 * JD-Core Version:    0.6.2
 */