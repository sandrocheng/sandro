import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.method.DigitsKeyListener;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

public final class bai extends BaseView
  implements View.OnClickListener
{
  private ButtonView a;
  private ButtonView b;
  private Context c;

  public bai(Context paramContext)
  {
    super(paramContext, 2130903154);
    this.c = paramContext;
  }

  public final void onClick(View paramView)
  {
    nd localnd = nd.a();
    if (paramView.equals(this.a))
    {
      localnd.a(26313);
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("intent_from", true);
      fs.a(getActivity(), fs.a, localBundle);
    }
    while (true)
    {
      return;
      if (paramView.equals(this.b))
      {
        localnd.a(26314);
        Dialog localDialog = new Dialog(this.c);
        localDialog.setTitle(2131428268);
        View localView = ((LayoutInflater)this.c.getSystemService("layout_inflater")).inflate(2130903067, new LinearLayout(this.c));
        localDialog.setContentView(localView);
        ButtonView localButtonView = (ButtonView)localView.findViewById(2131230794);
        EditText localEditText = (EditText)localView.findViewById(2131230793);
        localEditText.setInputType(2);
        localEditText.setBackgroundResource(2130837696);
        int i = (int)(0.5F + 8.0F * this.c.getResources().getDisplayMetrics().density);
        localEditText.setPadding(i, i, i, i);
        InputFilter[] arrayOfInputFilter = new InputFilter[1];
        arrayOfInputFilter[0] = new InputFilter.LengthFilter(12);
        localEditText.setFilters(arrayOfInputFilter);
        localEditText.setKeyListener(new DigitsKeyListener(false, true));
        localButtonView.setOnClickListener(new baj(this, localDialog));
        localDialog.setPositiveButton(2131427397, new bak(this, localEditText, localDialog), 2);
        localDialog.setNegativeButton(2131427379, new bal(localDialog), 2);
        localDialog.show();
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ((ButtonView)findViewById(2131231017));
    this.a.setOnClickListener(this);
    this.b = ((ButtonView)findViewById(2131231018));
    this.b.setOnClickListener(this);
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    paramFrameworkTemplateUI.setTitleTextData(2131428279);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bai
 * JD-Core Version:    0.6.2
 */