import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.Date;

final class bak
  implements View.OnClickListener
{
  bak(bai parambai, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    try
    {
      long l = ()(1048576.0F * Float.parseFloat(str));
      if (l < 1099511627776L)
      {
        if (l > 0L)
          nd.a().a(26221);
        iu localiu = new iu(QQPimApplication.a());
        localiu.setUsedForMonth(l);
        localiu.a(new Date().getTime());
        azu.a = false;
        azu.b = false;
        we.a = true;
        ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).notifyConfigChange();
      }
      while (true)
      {
        this.b.dismiss();
        return;
        ha.a(bai.a(this.c), bai.a(this.c).getString(2131428391));
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        ha.a(bai.a(this.c), bai.a(this.c).getString(2131428393));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bak
 * JD-Core Version:    0.6.2
 */