import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.LocationManager;

public final class aqo extends BaseView
{
  LocationManager a;
  private EditText b;
  private EditText c;
  private TextView d;
  private boolean e = false;
  private Dialog f;
  private String g = null;
  private Handler h = new aqp(this);

  public aqo(Context paramContext)
  {
    super(paramContext, 2130903166);
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    this.g = this.mContext.getString(2131430332);
    this.b = ((EditText)findViewById(2131231063));
    this.c = ((EditText)findViewById(2131231065));
    this.d = ((TextView)findViewById(2131231067));
    this.c.setEnabled(false);
    this.c.setTextColor(this.mContext.getResources().getColor(2131296323));
    this.c.setTextSize(17.0F);
    this.c.setText(this.mContext.getString(2131427455));
    this.b.addTextChangedListener(new aqo.a(this.b));
    ((ButtonView)findViewById(2131231066)).setOnClickListener(new aqr(this));
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return false;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427454);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }

  final class a
    implements TextWatcher
  {
    private EditText a;

    public a(EditText arg2)
    {
      Object localObject;
      this.a = localObject;
    }

    public final void afterTextChanged(Editable paramEditable)
    {
      switch (this.a.getId())
      {
      default:
      case 2131231063:
      }
      while (true)
      {
        return;
        String str = paramEditable.toString().trim();
        aqo localaqo = aqo.this;
        if (str.length() > 0);
        for (boolean bool = true; ; bool = false)
        {
          aqo.a(localaqo, bool);
          if (((str.length() != 3) || ((!str.startsWith("01")) && (!str.startsWith("02")))) && ((str.length() != 4) || (!str.startsWith("0")) || (str.startsWith("01")) || (str.startsWith("02"))) && (str.length() != 7))
            break label372;
          for (int i = 11 - str.length(); i > 0; i--)
            str = str + '0';
        }
        if (aqo.this.a == null)
          aqo.this.a = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
        StringBuffer localStringBuffer1 = new StringBuffer();
        StringBuffer localStringBuffer2 = new StringBuffer();
        StringBuffer localStringBuffer3 = new StringBuffer();
        aqo.this.a.getLocation(localStringBuffer1, localStringBuffer3, localStringBuffer2, str);
        aqo.m(aqo.this).setTextColor(aqo.l(aqo.this).getResources().getColor(2131296286));
        aqo.m(aqo.this).setTextSize(17.0F);
        aqo.m(aqo.this).setEnabled(true);
        aqo.m(aqo.this).setText(localStringBuffer3.append(localStringBuffer2.toString()));
        if ((aqo.n(aqo.this) != null) && (aqo.n(aqo.this).equals(localStringBuffer2.toString())))
          aqo.o(aqo.this).setVisibility(0);
        while (true)
        {
          nd.a().a(17);
          break;
          aqo.o(aqo.this).setVisibility(4);
        }
        label372: aqo.m(aqo.this).setEnabled(false);
        aqo.m(aqo.this).setTextColor(aqo.p(aqo.this).getResources().getColor(2131296323));
        aqo.m(aqo.this).setTextSize(17.0F);
        aqo.m(aqo.this).setText(aqo.q(aqo.this).getString(2131427455));
        aqo.o(aqo.this).setVisibility(4);
      }
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqo
 * JD-Core Version:    0.6.2
 */