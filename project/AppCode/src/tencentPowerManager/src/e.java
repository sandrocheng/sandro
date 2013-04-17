import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.SeekBar;
import android.widget.TextView;
import com.tencent.powermanager.uilib.CheckBoxView;
import java.util.ArrayList;

public final class e
{
  public static boolean a = false;

  public static de a(Context paramContext, String paramString)
  {
    de localde = new de(paramContext);
    localde.b();
    localde.a(paramString);
    return localde;
  }

  public static void a(Activity paramActivity, int paramInt, e.a parama)
  {
    if (a)
      return;
    aq localaq = aq.a();
    de localde = new de(paramActivity);
    localde.setTitle(2131099671);
    View localView = LayoutInflater.from(paramActivity).inflate(2130903068, null);
    SeekBar localSeekBar = (SeekBar)localView.findViewById(2131230818);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230820);
    TextView localTextView = (TextView)localView.findViewById(2131230819);
    localde.setContentView(localView);
    boolean bool1;
    label90: boolean bool2;
    if (paramInt < 0)
    {
      bool1 = true;
      localCheckBox.setChecked(bool1);
      localCheckBox.setOnClickListener(new f(localCheckBox, localSeekBar));
      localTextView.setText(paramInt * 100 / 255 + "%");
      if (localCheckBox.isChecked())
        break label248;
      bool2 = true;
      label155: localSeekBar.setEnabled(bool2);
      if (paramInt <= 13)
        break label254;
      localSeekBar.setProgress(paramInt - 13);
    }
    while (true)
    {
      localSeekBar.setOnSeekBarChangeListener(new g(localaq, paramActivity, localTextView));
      localde.a(2131099652, new h(parama, localCheckBox, localSeekBar, localde), 8);
      localde.a(new i(localde));
      localde.show();
      a = true;
      break;
      bool1 = false;
      break label90;
      label248: bool2 = false;
      break label155;
      label254: localSeekBar.setProgress(0);
    }
  }

  public static void a(Context paramContext, int paramInt, String[] paramArrayOfString, String paramString, e.b paramb)
  {
    if (a);
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      for (int i = 0; i < paramArrayOfString.length; i++)
      {
        dl localdl = new dl();
        localdl.a = paramArrayOfString[i];
        localArrayList.add(localdl);
      }
      df localdf = new df(paramContext);
      localdf.a(localArrayList, paramInt);
      localdf.setTitle(paramString);
      localdf.a(new j(paramb, localdf));
      localdf.a(new k());
      localdf.show();
      a = true;
    }
  }

  public static void a(Context paramContext, fx paramfx, boolean paramBoolean, aw paramaw)
  {
    String str1 = paramContext.getString(2131099781);
    String str2 = paramfx.a;
    a(new de(paramContext), paramContext, false, str1, str2, 2131099782, ax.c(paramfx), false, paramaw);
  }

  private static void a(de paramde, Context paramContext, boolean paramBoolean1, String paramString1, String paramString2, int paramInt, String paramString3, boolean paramBoolean2, aw paramaw)
  {
    if (a);
    while (true)
    {
      return;
      View localView = LayoutInflater.from(paramContext).inflate(2130903052, null);
      if (paramBoolean2)
        localView.findViewById(2131230769).setVisibility(0);
      paramde.a(localView);
      CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230770);
      localCheckBoxView.setChecked(paramBoolean1);
      paramde.setTitle(paramString1);
      paramde.c();
      ((TextView)localView.findViewById(2131230768)).setText(paramString2);
      localCheckBoxView.setOnClickListener(new l(paramde, paramBoolean1, paramContext, paramString1, paramString2, paramString3, paramBoolean2, paramaw));
      paramde.a(2131099782, new m(paramaw, paramContext, paramde), 8);
      paramde.a(new n(paramBoolean2, localCheckBoxView, paramString3));
      try
      {
        paramde.show();
        a = true;
      }
      catch (Exception localException)
      {
        a = false;
        localException.getMessage();
      }
    }
  }

  public static final class a
  {
    public a(ck paramck, bg parambg)
    {
    }
  }

  public static abstract interface b
  {
    public abstract void a(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     e
 * JD-Core Version:    0.6.2
 */