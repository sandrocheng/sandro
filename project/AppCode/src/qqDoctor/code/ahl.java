import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

public final class ahl
  implements View.OnClickListener
{
  public ahl(PickproofLockActivity paramPickproofLockActivity)
  {
  }

  public final void onClick(View paramView)
  {
    PickproofLockActivity.a(this.a);
    String str1 = PickproofLockActivity.b(this.a).getText().toString();
    String str2;
    String str3;
    if (PickproofLockActivity.c(this.a))
    {
      str2 = PickproofLockActivity.d(this.a).getBindQQNum();
      if (!str1.equals(str2))
        break label220;
      this.a.a();
      PickproofLockActivity.b(this.a).setEnabled(false);
      PickproofLockActivity.e(this.a).C(false);
      str3 = ft.c(this.a);
      if (str3 != null)
        break label126;
      this.a.finish();
      PickproofLockActivity.e(this.a).b = true;
    }
    while (true)
    {
      return;
      str2 = PickproofLockActivity.d(this.a).getPassword();
      break;
      label126: String str4 = PickproofLockActivity.e(this.a).bJ();
      if (str4 != null)
        if (str4.contains(str3));
      for (str4 = str4 + "|" + str3; ; str4 = str3)
      {
        PickproofLockActivity.e(this.a).p(str4);
        PickproofLockActivity.e(this.a).b = true;
        this.a.finish();
        break;
      }
      label220: ha.a(this.a.getApplicationContext(), 2131430132);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahl
 * JD-Core Version:    0.6.2
 */