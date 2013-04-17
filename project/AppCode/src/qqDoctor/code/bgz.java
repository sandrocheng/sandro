import android.content.Context;
import android.content.Intent;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bgz extends BaseView
  implements View.OnClickListener
{
  private LinearLayout a;
  private EditText b = null;
  private LinearLayout c;
  private ButtonView d;
  private TextView e;
  private String f = "";
  private Intent g;
  private ho h = ho.a();
  private int i;
  private yj j;
  private boolean k = false;
  private String l = this.h.cd();
  private TextWatcher m = new bha(this);

  public bgz(Context paramContext)
  {
    super(paramContext, 2130903359);
    this.j = new yj(paramContext);
  }

  private void a()
  {
    String str = this.h.ci();
    int n;
    int i1;
    label37: int i2;
    label51: LinearLayout localLinearLayout2;
    if ((str != null) && (!str.equals("")))
    {
      n = 1;
      if ((n == 0) || (this.k))
        break label107;
      i1 = 1;
      LinearLayout localLinearLayout1 = this.c;
      if (i1 == 0)
        break label121;
      i2 = 0;
      localLinearLayout1.setVisibility(i2);
      localLinearLayout2 = this.a;
      if (i1 == 0)
        break label128;
    }
    List localList;
    label128: for (int i3 = 8; ; i3 = 0)
    {
      localLinearLayout2.setVisibility(i3);
      localList = getOperatingBarDataList();
      if ((localList != null) && (localList.size() != 0))
        break label134;
      return;
      n = 0;
      break;
      label107: this.b.requestFocus();
      i1 = 0;
      break label37;
      label121: i2 = 8;
      break label51;
    }
    label134: Iterator localIterator = localList.iterator();
    label143: OperatingModel localOperatingModel;
    if (localIterator.hasNext())
    {
      localOperatingModel = (OperatingModel)localIterator.next();
      if (localOperatingModel.getID() == 0)
        if (i1 == 0)
          break label198;
    }
    label198: for (int i4 = 8; ; i4 = 0)
    {
      localOperatingModel.setVisible(i4);
      refreshOperatingBar(localOperatingModel);
      break label143;
      break;
    }
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new OperatingModel(0, 2131428533, 1));
    ((OperatingModel)localArrayList.get(0)).setEnable(false);
    return localArrayList;
  }

  public final void onBackClick()
  {
    super.onBackClick();
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231696:
    }
    while (true)
    {
      return;
      this.k = true;
      a();
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.f = "";
    this.c = ((LinearLayout)findViewById(2131231694));
    this.a = ((LinearLayout)findViewById(2131230728));
    this.b = ((EditText)findViewById(2131230729));
    this.d = ((ButtonView)findViewById(2131231696));
    this.e = ((TextView)findViewById(2131231695));
    this.d.setOnClickListener(this);
    this.g = getActivity().getIntent();
    if (this.g != null)
      this.i = this.g.getIntExtra("type", -1);
    String str = this.h.ci();
    this.b.setText(str);
    this.e.setText(str);
    this.b.addTextChangedListener(this.m);
    a();
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    switch (paramOperatingModel.getID())
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      this.f = this.b.getText().toString();
      String str = this.f;
      int n;
      label59: int i2;
      if ((str != null) && (!str.equals("")))
      {
        n = 1;
        if (n != 0)
          break label96;
        i2 = 1;
      }
      while (true)
      {
        if (i2 != 1)
          break label117;
        ha.b(this.mContext, this.mContext.getString(2131430097));
        break;
        n = 0;
        break label59;
        label96: int i1 = str.length();
        i2 = 0;
        if (i1 < 5)
          i2 = 2;
      }
      label117: if (i2 == 2)
      {
        ha.b(this.mContext, this.mContext.getString(2131430098));
      }
      else
      {
        ha.b(this.mContext, this.mContext.getString(2131430138));
        this.h.z(this.f);
        getActivity().finish();
        yj.a(this.mContext, this.i);
        new Thread(new bhb(this)).start();
      }
    }
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    getActivity().finish();
    yj.a(this.mContext, this.i);
  }

  public final void onResume()
  {
    super.onResume();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131430114);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    if (this.i != -1)
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838119);
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      return;
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgz
 * JD-Core Version:    0.6.2
 */