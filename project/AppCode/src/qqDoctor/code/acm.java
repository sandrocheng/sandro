import android.content.Context;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class acm
  implements Runnable
{
  acm(acj paramacj, kw paramkw)
  {
  }

  public final void run()
  {
    Dialog localDialog = new Dialog(this.b.a);
    localDialog.setTitle(2131427692);
    localDialog.setMessage(this.b.a.getString(2131428355) + "(" + this.a.getAppName() + ")?");
    localDialog.setPositiveButton(2131427397, new acn(this, localDialog), 1);
    localDialog.setNegativeButton(2131427379, new aco(localDialog), 2);
    localDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     acm
 * JD-Core Version:    0.6.2
 */