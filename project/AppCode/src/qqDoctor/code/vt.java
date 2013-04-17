import android.os.Handler;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class vt
  implements Runnable
{
  vt(vk paramvk, lf paramlf)
  {
  }

  public final void run()
  {
    Dialog localDialog = new Dialog(this.b.a);
    localDialog.setTitle(2131427759);
    String str = this.b.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a.phonenum;
    localDialog.setMessage(String.format(str, arrayOfObject));
    localDialog.setPositiveButton(2131427397, new vu(this, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new vv(this, localDialog), 2);
    this.b.i.post(new vn(localDialog));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vt
 * JD-Core Version:    0.6.2
 */