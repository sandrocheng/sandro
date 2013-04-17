import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

public final class ahm
  implements View.OnClickListener
{
  public ahm(PickproofLockActivity paramPickproofLockActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = ft.c(this.a);
    if ((str1 == null) || (str1.length() <= 0))
      ha.b(this.a, 2131429365);
    while (true)
    {
      return;
      String str2 = PickproofLockActivity.d(this.a).getHelperNumber();
      if (str2 == null)
      {
        str2 = PickproofLockActivity.e(this.a).bE();
        PickproofLockActivity.d(this.a).setHelperNumber(str2);
      }
      if ((str2 != null) && (str2.length() > 0))
        new xn(this.a).a(2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ahm
 * JD-Core Version:    0.6.2
 */