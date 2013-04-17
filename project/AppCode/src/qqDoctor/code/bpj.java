import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bpj
  implements AdapterView.OnItemClickListener
{
  bpj(bot parambot, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1;
    int i;
    label94: int j;
    label115: int k;
    switch (this.b.getItem(paramInt).eventCode)
    {
    default:
      bool1 = true;
      nd.a().a(14);
      bot.a(this.a, new cl(bot.D(this.a)));
      bot.k(this.a).a(bot.E(this.a));
      if (bool1)
      {
        i = 1001;
        if ((!bool1) || (!bot.B(this.a).ai()))
          break label314;
        j = 1;
        if (j == 0)
          break label355;
        View localView = LayoutInflater.from(bot.F(this.a)).inflate(2130903051, null);
        Dialog localDialog = new Dialog(bot.G(this.a));
        localDialog.setTitle(bot.H(this.a).getResources().getString(2131427567));
        localDialog.setView(localView);
        TextView localTextView = (TextView)localView.findViewById(2131230761);
        CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
        localCheckBoxView.setChecked(true);
        if (!bool1)
          break label348;
        k = 2131427636;
        label220: localTextView.setText(bot.I(this.a).getResources().getString(k));
        localDialog.setPositiveButton(2131427397, new bpk(this, bool1, localCheckBoxView, i, localDialog), 2);
        localDialog.setNeutralButton(2131427379, new bpl(localDialog), 2);
        localDialog.show();
      }
      break;
    case 1001:
    case 1002:
    }
    while (true)
    {
      this.b.dismiss();
      return;
      bool1 = true;
      break;
      bool1 = false;
      break;
      i = 1002;
      break label94;
      label314: j = 0;
      if (bool1)
        break label115;
      boolean bool2 = bot.B(this.a).ah();
      j = 0;
      if (!bool2)
        break label115;
      j = 1;
      break label115;
      label348: k = 2131427635;
      break label220;
      label355: bot.b(this.a, i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpj
 * JD-Core Version:    0.6.2
 */