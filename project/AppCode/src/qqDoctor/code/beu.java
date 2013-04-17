import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.utils.SMSUtil;

final class beu
  implements View.OnClickListener
{
  beu(bet parambet, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    String str1 = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class)).getHelperNumber();
    String str2 = bet.a(this.b).getString(2131429429);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = bet.b(this.b).bT();
    SMSUtil.sendSMS(str1, String.format(str2, arrayOfObject), bet.c(this.b));
    ha.a(bet.d(this.b), 2131428579);
    Intent localIntent = new Intent();
    localIntent.setClass(bet.e(this.b), PickproofActivity.class);
    bet.f(this.b).startActivity(localIntent);
    ((Activity)bet.g(this.b)).finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     beu
 * JD-Core Version:    0.6.2
 */