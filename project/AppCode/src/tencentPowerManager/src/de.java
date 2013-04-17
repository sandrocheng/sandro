import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.powermanager.uilib.button.ButtonView;

public final class de extends Dialog
{
  private dm a;
  private View b;
  private Context c;
  private TextView d;
  private TextView e;
  private ButtonView f;
  private ButtonView g;
  private LinearLayout h;
  private LinearLayout i;
  private ImageView j;
  private LinearLayout k;
  private LinearLayout l;
  private LinearLayout m;
  private LinearLayout n;
  private boolean o = true;
  private int p = 0;
  private boolean q = false;
  private boolean r = false;

  public de(Context paramContext)
  {
    super(paramContext, 2131165184);
    this.c = paramContext;
    this.p = 0;
    this.q = false;
    this.r = false;
    this.b = LayoutInflater.from(this.c).inflate(2130903072, null);
    this.d = new TextView(this.c);
    this.e = new TextView(this.c);
    this.h = ((LinearLayout)this.b.findViewById(2131230833));
    this.i = ((LinearLayout)this.b.findViewById(2131230835));
    this.k = ((LinearLayout)this.b.findViewById(2131230836));
    this.l = ((LinearLayout)this.b.findViewById(2131230838));
    this.m = ((LinearLayout)this.b.findViewById(2131230837));
    this.j = ((ImageView)this.b.findViewById(2131230765));
    this.n = ((LinearLayout)this.b.findViewById(2131230762));
  }

  public final void a()
  {
    this.p = 0;
    this.q = false;
    this.r = false;
    if (this.h != null)
      this.h.removeAllViews();
    if (this.i != null)
      this.i.removeAllViews();
    if (this.l != null)
      this.l.removeAllViews();
    if (this.m != null)
      this.m.removeAllViews();
  }

  public final void a(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    String str = this.c.getResources().getString(paramInt1);
    this.p = (1 + this.p);
    this.q = true;
    this.f = new ButtonView(this.c, paramInt2);
    this.j.setVisibility(0);
    this.k.setVisibility(0);
    this.f.setText(str);
    this.f.setOnClickListener(paramOnClickListener);
    this.f.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    this.l.removeAllViews();
    this.l.addView(this.f, localLayoutParams);
  }

  public final void a(View.OnClickListener paramOnClickListener)
  {
    String str = this.c.getResources().getString(2131099651);
    this.p = (1 + this.p);
    this.r = true;
    this.g = new ButtonView(this.c, 8);
    this.j.setVisibility(0);
    this.m.setVisibility(0);
    this.k.setVisibility(0);
    this.g.setText(str);
    this.g.setOnClickListener(paramOnClickListener);
    this.g.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    this.m.removeAllViews();
    this.m.addView(this.g, localLayoutParams);
  }

  public final void a(View paramView)
  {
    setContentView(paramView);
  }

  public final void a(dm paramdm)
  {
    this.a = paramdm;
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.e.setText(paramCharSequence);
    this.e.setTextColor(this.c.getResources().getColor(2131034127));
    this.e.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    this.i.removeView(this.e);
    this.i.addView(this.e, localLayoutParams);
  }

  public final void b()
  {
    this.h.setVisibility(8);
    this.k.setVisibility(8);
    this.n.setVisibility(8);
  }

  public final void c()
  {
    this.o = false;
  }

  public final void dismiss()
  {
    this.p = 0;
    this.q = false;
    this.r = false;
    super.dismiss();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setContentView(this.b);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.height = -2;
    localLayoutParams.width = -1;
    getWindow().setAttributes(localLayoutParams);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.o)
      if ((paramInt != 4) || (paramKeyEvent.getRepeatCount() != 0))
        break label52;
    label52: for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
    {
      return bool;
      if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0) && (this.a != null))
        this.a.a(this);
    }
  }

  public final void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
  }

  public final void setContentView(View paramView)
  {
    this.i.removeAllViews();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.gravity = 17;
    new DisplayMetrics();
    paramView.setMinimumWidth(95 * this.c.getApplicationContext().getResources().getDisplayMetrics().widthPixels / 100);
    this.i.addView(paramView, localLayoutParams);
  }

  public final void setTitle(int paramInt)
  {
    setTitle(this.c.getResources().getString(paramInt));
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.h.setVisibility(0);
    this.d.setText(paramCharSequence);
    this.d.setTextColor(this.c.getResources().getColor(2131034123));
    this.d.setTextSize(18.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.leftMargin = 10;
    localLayoutParams.gravity = 16;
    this.h.removeView(this.d);
    this.h.addView(this.d, localLayoutParams);
  }

  public final void show()
  {
    LinearLayout.LayoutParams localLayoutParams;
    if (this.p == 1)
    {
      localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 17;
      localLayoutParams.setMargins(6, 0, 6, 0);
      if (!this.q)
        break label72;
      if (this.f != null)
        this.f.setLayoutParams(localLayoutParams);
    }
    while (true)
    {
      super.show();
      getWindow().setSoftInputMode(16);
      return;
      label72: if ((this.r) && (this.g != null))
        this.g.setLayoutParams(localLayoutParams);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     de
 * JD-Core Version:    0.6.2
 */