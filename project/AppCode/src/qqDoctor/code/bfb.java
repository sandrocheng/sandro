import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;

final class bfb
  implements View.OnClickListener
{
  bfb(bfa parambfa, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    ((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
    String str2 = ki.a(str1);
    if (this.c.a(str1, str2))
      this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfb
 * JD-Core Version:    0.6.2
 */