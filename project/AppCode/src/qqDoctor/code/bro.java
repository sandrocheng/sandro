import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;
import java.util.Map;

final class bro
  implements AdapterView.OnItemClickListener
{
  bro(brl parambrl, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.a.dismiss();
    switch (this.a.getItem(paramInt).eventCode)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (brl.b(this.b) == null)
        brl.a(this.b, f.e());
      Long localLong = (Long)((Map)brl.c(this.b).get(this.b.a)).get("id");
      brl.b(this.b).a(localLong.longValue());
      ha.b(brl.d(this.b), 2131428535);
      brl.e(this.b);
      FrameworkTemplateUI localFrameworkTemplateUI = this.b.getFrameworkTemplateUI();
      String str = brl.d(this.b).getString(2131428105);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(brl.b(this.b).d());
      localFrameworkTemplateUI.updateInfoBarText(String.format(str, arrayOfObject));
      continue;
      brl.a(this.b, this.b.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bro
 * JD-Core Version:    0.6.2
 */