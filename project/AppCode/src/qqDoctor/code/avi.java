import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class avi extends Handler
{
  avi(avh paramavh)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      int i = ((Integer)paramMessage.obj).intValue();
      String str1 = avh.a(this.a).getString(2131427692);
      String str2 = avh.b(this.a).getString(2131427853);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((lw)avh.c(this.a).get(i)).b;
      String str3 = String.format(str2, arrayOfObject);
      Dialog localDialog = new Dialog(this.a.getActivity());
      localDialog.setTitle(str1);
      localDialog.setMessage(str3);
      localDialog.setPositiveButton(2131427397, new avj(this, i, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new avk(localDialog), 2);
      localDialog.show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avi
 * JD-Core Version:    0.6.2
 */