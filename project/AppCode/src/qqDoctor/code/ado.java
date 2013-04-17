import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.tencent.qqpimsecure.ui.activity.LowSDKwarningActivity;

public final class ado
  implements DialogInterface.OnClickListener
{
  public ado(LowSDKwarningActivity paramLowSDKwarningActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = "http://misc.3g.qq.com/g/s?aid=template&tid=getByRom&rom=3";
    LowSDKwarningActivity localLowSDKwarningActivity = this.a;
    if (!str.startsWith("http://"))
      str = "http://" + str;
    Uri localUri = Uri.parse(str);
    try
    {
      localLowSDKwarningActivity.startActivity(new Intent("android.intent.action.VIEW", localUri));
      paramDialogInterface.dismiss();
      LowSDKwarningActivity.a(this.a).finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ado
 * JD-Core Version:    0.6.2
 */