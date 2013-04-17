import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.List;

public final class all extends akw
{
  private SoftwareManager c;
  private String d;
  private BaseView e;
  private Handler f = new alp(this);

  public all(BaseListView<kw> paramBaseListView, List<ListModel<kw>> paramList)
  {
    super(paramBaseListView, paramBaseListView.getListView(), paramList, 2);
    this.e = paramBaseListView;
    this.c = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
  }

  private void d(kw paramkw)
  {
    this.d = paramkw.getPackageName();
    notifyDataSetChanged();
    Context localContext = this.mContext;
    String str = this.mContext.getString(2131429529);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramkw.getAppName();
    ha.b(localContext, String.format(str, arrayOfObject));
    new alo(this, paramkw).start();
  }

  public final void a(akw.a parama, kw paramkw)
  {
    int i;
    if (paramkw.t() == 1)
    {
      parama.j.setVisibility(0);
      parama.j.setBackgroundResource(2130838295);
      parama.j.setText("");
      parama.j.setClickable(true);
      parama.a.setBackgroundResource(2130837921);
      parama.e.setVisibility(8);
      if ((this.d == null) || (this.d.hashCode() != paramkw.getPackageName().hashCode()))
        break label204;
      parama.a.setVisibility(4);
      View localView = parama.a;
      if (paramkw.t() != 1)
        break label195;
      i = gw.a;
      label110: TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, i, 0.0F, 0.0F);
      localTranslateAnimation.setDuration(400L);
      localTranslateAnimation.setAnimationListener(new alq(this, localView, paramkw));
      localView.startAnimation(localTranslateAnimation);
    }
    while (true)
    {
      return;
      if (paramkw.t() == 2)
      {
        parama.j.setVisibility(0);
        parama.j.setBackgroundResource(2130838296);
        break;
      }
      parama.j.setVisibility(8);
      break;
      label195: i = -gw.a;
      break label110;
      label204: parama.a.setVisibility(0);
    }
  }

  public final void b(View paramView)
  {
    kw localkw = (kw)paramView.getTag();
    if (bnp.a)
      if (localkw.t() == 1)
        if (!Environment.getExternalStorageState().equals("mounted"))
          ha.b(this.mContext, 2131429522);
    while (true)
    {
      return;
      ft.a locala2 = new ft.a();
      ft.a(locala2);
      if (localkw.getSize() > locala2.a)
      {
        ha.b(this.mContext, 2131429523);
      }
      else
      {
        d(localkw);
        continue;
        if (localkw.t() == 2)
        {
          ft.a locala1 = new ft.a();
          ft.b(locala1);
          if (localkw.getSize() > locala1.a)
          {
            ha.b(this.mContext, 2131429524);
          }
          else
          {
            d(localkw);
            continue;
            if (ho.a().bZ())
            {
              Dialog localDialog = new Dialog(this.mContext);
              localDialog.setTitle(2131428434);
              View localView = LayoutInflater.from(this.mContext).inflate(2130903051, null);
              TextView localTextView = (TextView)localView.findViewById(2131230761);
              if (localkw.t() == 1);
              for (int i = 2131429520; ; i = 2131429521)
              {
                localTextView.setText(i);
                CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
                localCheckBoxView.setChecked(true);
                ((TextView)localView.findViewById(2131230748)).setText(this.mContext.getResources().getString(2131428872));
                localDialog.setContentView(localView);
                localDialog.setPositiveButton(2131428152, new alm(this, localkw, localCheckBoxView, localDialog), 1);
                localDialog.setNegativeButton(2131427379, new aln(localDialog), 2);
                localDialog.show();
                break;
              }
            }
            try
            {
              this.c.goToInstalledAppDetails(localkw.getPackageName());
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              ha.b(this.mContext, 2131429531);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     all
 * JD-Core Version:    0.6.2
 */