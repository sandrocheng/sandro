import android.app.Activity;
import android.content.res.Resources;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class gb
  implements Runnable
{
  gb(Activity paramActivity)
  {
  }

  public final void run()
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(this.a.getResources().getString(2131428561));
    localDialog.setMessage(this.a.getResources().getString(2131429207));
    localDialog.setPositiveButton(2131427397, new gc(localDialog), 2);
    localDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gb
 * JD-Core Version:    0.6.2
 */