import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.aresengine.IKeyWordDao;
import java.util.List;

final class avo
  implements View.OnClickListener
{
  avo(avh paramavh, EditText paramEditText, int paramInt, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString();
    if (!"".equals(str.trim()))
    {
      ((lw)avh.f(this.d).get(this.b)).b = str;
      avh.g(this.d).clear();
      for (int i = 1; i < avh.h(this.d).size(); i++)
        avh.g(this.d).add(((lw)avh.i(this.d).get(i)).b);
      avh.j(this.d).setAll(avh.g(this.d));
      this.d.onResume();
      this.c.dismiss();
    }
    while (true)
    {
      return;
      this.a.setText("");
      ha.a(avh.k(this.d), 2131428735);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avo
 * JD-Core Version:    0.6.2
 */