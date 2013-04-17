import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity1;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

public final class xn
{
  Context a;
  ho b;
  AntitheftManager c;
  BroadcastReceiver d = null;
  private LayoutInflater e;
  private View f;

  public xn(Context paramContext)
  {
    this.a = paramContext;
    this.e = LayoutInflater.from(paramContext);
    this.b = ho.a();
    this.c = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
  }

  public static void a(Context paramContext, int paramInt)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.setTitle(2131429289);
    localDialog.setMessage(paramInt);
    localDialog.setPositiveButton(2131427397, new xq(localDialog), 2);
    localDialog.show();
  }

  public final void a()
  {
    if (this.b.bD())
    {
      String str1 = this.c.getBindQQNum();
      if ((str1 != null) && (!"".equals(str1)))
      {
        Intent localIntent3 = new Intent();
        localIntent3.putExtra("BIND_QQ", true);
        localIntent3.setClass(this.a, PickproofActivity.class);
        this.a.startActivity(localIntent3);
      }
    }
    while (true)
    {
      return;
      String str2 = this.c.getPassword();
      if (str2 == null)
      {
        str2 = this.b.bF();
        this.c.setPassword(str2);
      }
      if ((str2 == null) || ("".equals(str2)))
      {
        Intent localIntent2 = new Intent();
        localIntent2.setClass(this.a, PickproofActivity.class);
        this.a.startActivity(localIntent2);
      }
      else
      {
        c();
        continue;
        Intent localIntent1 = new Intent();
        localIntent1.setClass(this.a, PickproofGuidelActivity1.class);
        localIntent1.putExtra("bind_qq", true);
        this.a.startActivity(localIntent1);
      }
    }
  }

  public final void a(int paramInt)
  {
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(2131429405);
    localDialog.setMessage(2131429367);
    localDialog.setPositiveButton(2131427397, new xr(this, localDialog), 2);
    localDialog.setPositiveButton(2131427379, new xs(this, localDialog, paramInt), 2);
    localDialog.show();
  }

  public final boolean a(String paramString)
  {
    String str = this.c.getPassword();
    if (str == null)
    {
      str = this.b.bF();
      this.c.setPassword(str);
    }
    return str.equals(paramString);
  }

  public final Dialog b()
  {
    this.f = this.e.inflate(2130903066, null);
    EditText localEditText1 = (EditText)this.f.findViewById(2131230790);
    EditText localEditText2 = (EditText)this.f.findViewById(2131230791);
    EditText localEditText3 = (EditText)this.f.findViewById(2131230792);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(this.a.getResources().getString(2131429386));
    localDialog.setView(this.f);
    localDialog.setPositiveButton(2131427397, new xt(this, localEditText1, localEditText2, localEditText3, localDialog), 2);
    localDialog.setNegativeButton(2131427399, new xu(localDialog), 2);
    ((Button)this.f.findViewById(2131230786)).setOnClickListener(new xv(this, localDialog));
    CheckBoxView localCheckBoxView = (CheckBoxView)this.f.findViewById(2131230785);
    localCheckBoxView.setClickListener(new xw(localCheckBoxView, localEditText1, localEditText2, localEditText3));
    localDialog.show();
    return localDialog;
  }

  public final Dialog c()
  {
    this.f = this.e.inflate(2130903064, null);
    EditText localEditText = (EditText)this.f.findViewById(2131230784);
    TextView localTextView = (TextView)this.f.findViewById(2131230783);
    String str1 = this.a.getResources().getString(2131429390);
    String str2 = this.a.getResources().getString(2131429389);
    localTextView.setText(str1);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(str2);
    localDialog.setView(this.f);
    localDialog.setPositiveButton(2131427397, new xx(this, localEditText, localDialog), 1);
    localDialog.setNegativeButton(2131427399, new xy(localDialog), 2);
    CheckBoxView localCheckBoxView = (CheckBoxView)this.f.findViewById(2131230785);
    localCheckBoxView.setClickListener(new xz(localCheckBoxView, localEditText));
    ((Button)this.f.findViewById(2131230786)).setOnClickListener(new ya(this, localDialog));
    localDialog.show();
    return localDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xn
 * JD-Core Version:    0.6.2
 */