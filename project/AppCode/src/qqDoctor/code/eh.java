import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.WifiApproveDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.utils.WifiUtil;

public final class eh
  implements View.OnClickListener
{
  public eh(Context paramContext, String paramString, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = WifiUtil.getSSID();
    if (str == null)
      ha.a(this.a, 2131428757);
    while (true)
    {
      this.c.dismiss();
      return;
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, WifiApproveDialog.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("Location", this.b);
      localIntent.putExtra("FromInternalUI", true);
      localIntent.putExtra("WifiSsid", str);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     eh
 * JD-Core Version:    0.6.2
 */