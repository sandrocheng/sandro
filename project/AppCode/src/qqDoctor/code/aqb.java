import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;

final class aqb
  implements View.OnClickListener
{
  aqb(aqa paramaqa, Dialog paramDialog, int paramInt, kv paramkv)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    if ((this.b == -3) || (this.b == 3))
      aqa.a(this.d, this.c);
    while (true)
    {
      return;
      if ((this.b == 1) || (this.b == 2))
      {
        aqa.a(this.d).continueTask(this.c);
      }
      else if (this.b != 0)
      {
        of.a(this.c);
        aqa.a(this.d).startTask(this.c);
        nd.a().a(26273);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqb
 * JD-Core Version:    0.6.2
 */