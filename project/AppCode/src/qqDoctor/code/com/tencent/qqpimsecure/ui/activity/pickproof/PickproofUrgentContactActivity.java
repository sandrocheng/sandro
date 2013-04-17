package com.tencent.qqpimsecure.ui.activity.pickproof;

import aho;
import ahp;
import ahq;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.utils.SMSUtil;
import ft;
import ha;
import ho;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import nd;

public class PickproofUrgentContactActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  public final class a extends BaseView
  {
    private TextView b = null;
    private ImageView c = null;
    private EditText d;
    private ImageView e;
    private CheckBoxView f;
    private OperatingModel g;
    private AntitheftManager h;
    private ho i;
    private Dialog j;

    public a(Context arg2)
    {
      super(2130903210);
    }

    private void a()
    {
      this.i.E(false);
      this.h.setHelperNumber("");
      Intent localIntent = new Intent();
      localIntent.setClass(this.mContext, PickproofBindQQSuccessGuideActivity.class);
      this.mContext.startActivity(localIntent);
      ((Activity)this.mContext).finish();
    }

    private void a(String paramString)
    {
      if (paramString == null)
      {
        this.c.setImageResource(2130837816);
        this.b.setTextColor(this.mContext.getResources().getColor(2131296403));
        this.b.setText(2131429437);
      }
      while (true)
      {
        return;
        this.c.setImageResource(2130837833);
        this.b.setTextColor(this.mContext.getResources().getColor(2131296392));
        this.b.setText(paramString);
      }
    }

    private void b(String paramString)
    {
      if ((this.j != null) && (this.j.isShowing()))
      {
        this.j.dismiss();
        this.j = null;
      }
      if (paramString != null)
      {
        this.i.E(true);
        this.h.setHelperNumber(paramString);
        if (this.f.getChecked())
          SMSUtil.sendSMS(paramString, this.mContext.getString(2131429445), this.mContext);
      }
      while (true)
      {
        Intent localIntent = new Intent();
        localIntent.setClass(this.mContext, PickproofBindQQSuccessGuideActivity.class);
        this.mContext.startActivity(localIntent);
        ((Activity)this.mContext).finish();
        return;
        this.i.E(false);
        this.h.setHelperNumber("");
        ha.a(this.mContext, this.mContext.getString(2131429444));
      }
    }

    protected final List<OperatingModel> createOperatingBarDataList()
    {
      ArrayList localArrayList = new ArrayList();
      this.g = new OperatingModel(1, this.mContext.getString(2131428533));
      localArrayList.add(this.g);
      return localArrayList;
    }

    public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      if ((paramIntent == null) || (paramInt2 == 0));
      while (true)
      {
        return;
        ArrayList localArrayList = paramIntent.getStringArrayListExtra("selecteddata");
        if (localArrayList != null)
        {
          Iterator localIterator = localArrayList.iterator();
          while (localIterator.hasNext())
          {
            String str1 = (String)localIterator.next();
            String str2 = str1.substring(0, str1.indexOf(';'));
            this.d.setText(str2);
          }
        }
      }
    }

    public final void onCreate()
    {
      super.onCreate();
      this.i = ho.a();
      this.h = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
      ((Activity)this.mContext).getWindow().setSoftInputMode(3);
      this.b = ((TextView)findViewById(2131231254));
      this.c = ((ImageView)findViewById(2131230726));
      this.f = ((CheckBoxView)findViewById(2131231255));
      this.f.setChecked(true);
      this.d = ((EditText)findViewById(2131231242));
      String str = this.h.getHelperNumber();
      if (str == null)
      {
        str = this.i.bE();
        this.h.setHelperNumber(str);
      }
      if ((str != null) && (!"".equals(str)))
      {
        this.d.setText(str);
        this.g.setEnable(true);
      }
      while (true)
      {
        refreshOperatingBar(this.g);
        this.d.addTextChangedListener(new aho(this));
        this.e = ((ImageView)findViewById(2131230789));
        this.e.setOnClickListener(new ahp(this));
        return;
        this.g.setEnable(false);
      }
    }

    public final void onHandlerMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 100000:
      case 100001:
      }
      while (true)
      {
        return;
        b(String.valueOf(paramMessage.obj));
        continue;
        b(null);
      }
    }

    public final void onOperatingBarClick(OperatingModel paramOperatingModel)
    {
      nd localnd = nd.a();
      switch (paramOperatingModel.getID())
      {
      default:
      case 0:
      case 1:
      }
      while (true)
      {
        return;
        localnd.a(26385);
        a();
        continue;
        localnd.a(26386);
        String str1 = this.d.getText().toString().trim();
        if ((str1 == null) || (str1.equals("")))
        {
          a(this.mContext.getString(2131429324));
        }
        else
        {
          String str2 = str1.replace("+86", "").replace("-", "");
          if (ft.b(str2))
          {
            String str3 = ft.b(this.mContext);
            if ((str3 != null) && (str2.equals(str3)))
            {
              a(this.mContext.getString(2131429332));
            }
            else
            {
              this.j = new Dialog(this.mContext);
              this.j.addProgressDialog();
              this.j.setTitle(2131427567);
              this.j.setMessage(2131429443);
              this.j.show();
              new ahq(this, str2).start();
            }
          }
          else
          {
            a(this.mContext.getString(2131429323));
          }
        }
      }
    }

    public final void onOptionClick(int paramInt)
    {
      nd.a().a(26385);
      a();
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131429442);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130838119);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofUrgentContactActivity
 * JD-Core Version:    0.6.2
 */