import android.os.Handler;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class vq
  implements Runnable
{
  vq(vk paramvk, lf paramlf, vk.b paramb)
  {
  }

  public final void run()
  {
    Dialog localDialog = new Dialog(this.c.a);
    localDialog.setTitle(2131427759);
    if (this.a.b == 1);
    for (String str = this.c.d; ; str = this.c.e)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.a.phonenum;
      localDialog.setMessage(String.format(str, arrayOfObject));
      localDialog.setPositiveButton(2131427397, new vr(this, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new vs(this, localDialog), 2);
      this.c.i.post(new vn(localDialog));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vq
 * JD-Core Version:    0.6.2
 */