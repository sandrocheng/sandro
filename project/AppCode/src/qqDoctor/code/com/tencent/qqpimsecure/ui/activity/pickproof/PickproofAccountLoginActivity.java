package com.tencent.qqpimsecure.ui.activity.pickproof;

import a;
import agy;
import agz;
import aha;
import ahc;
import ahd;
import ahe;
import ahf;
import ahg;
import ahh;
import ahi;
import ahj;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import ft;
import ha;
import ho;
import java.util.ArrayList;
import java.util.List;
import mw;
import nd;
import yb;

public class PickproofAccountLoginActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this, getIntent().getIntExtra("action", 0));
  }

  public final class a extends BaseView
  {
    private TextView a = null;
    private ImageView b = null;
    private EditText c = null;
    private EditText d = null;
    private ImageView e;
    private Dialog f;
    private mw g;
    private AntitheftManager h;
    private ho i;
    private int j;
    private boolean k;
    private TextWatcher l = new agy(this);

    public a(Context paramInt, int arg3)
    {
      super(2130903207);
      int n;
      this.j = n;
    }

    private void a()
    {
      if (!a.h(this.mContext))
        a.a((Activity)this.mContext, -1001, new ahe(this));
      while (true)
      {
        return;
        String str1 = this.c.getText().toString();
        String str2 = this.d.getText().toString();
        if ((str1 == null) || ("".equals(str1)))
        {
          a(this.mContext.getString(2131430097));
        }
        else if ((str2 == null) || ("".equals(str2)))
        {
          a(this.mContext.getString(2131430101));
        }
        else
        {
          InputMethodManager localInputMethodManager = (InputMethodManager)PickproofAccountLoginActivity.this.getSystemService("input_method");
          if ((localInputMethodManager != null) && (localInputMethodManager.isActive()))
            localInputMethodManager.hideSoftInputFromWindow(PickproofAccountLoginActivity.this.getWindow().peekDecorView().getWindowToken(), 0);
          if (((this.j == 2) || (this.j == 1) || (this.j == 4)) && (!str1.equals(this.h.getBindQQNum())))
          {
            a(this.mContext.getString(2131429462));
          }
          else
          {
            this.f = new Dialog(this.mContext);
            this.f.addProgressDialog();
            this.f.setTitle(2131430244);
            this.f.setMessage(2131429436);
            this.f.setNeutralButton(2131427379, new ahf(this), 2);
            this.f.show();
            new ahg(this, str1, str2).start();
          }
        }
      }
    }

    private void a(String paramString)
    {
      if (paramString == null)
        if (this.j == 0)
        {
          this.b.setImageResource(2130837816);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296413));
          this.a.setText(2131429433);
        }
      while (true)
      {
        return;
        if (this.j == 1)
        {
          this.b.setImageResource(2130837816);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296413));
          this.a.setText(2131430097);
        }
        else if (this.j == 2)
        {
          this.b.setImageResource(2130837816);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296413));
          this.a.setText(2131429456);
        }
        else if (this.j == 3)
        {
          this.b.setImageResource(2130837816);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296413));
          this.a.setText(2131429457);
        }
        else
        {
          this.b.setImageResource(2130837816);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296413));
          this.a.setText(2131429455);
          continue;
          this.b.setImageResource(2130837833);
          this.a.setTextColor(this.mContext.getResources().getColor(2131296392));
          this.a.setText(paramString);
        }
      }
    }

    private void b()
    {
      View localView = LayoutInflater.from(this.mContext).inflate(2130903060, null);
      this.e = ((ImageView)localView.findViewById(2131230772));
      this.e.setImageDrawable(this.mContext.getResources().getDrawable(2130837949));
      ((ButtonView)localView.findViewById(2131230773)).setOnClickListener(new ahi(this));
      EditText localEditText = (EditText)localView.findViewById(2131230774);
      new aha(this).start();
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(this.mContext.getResources().getString(2131427620));
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427397, new ahj(this, localEditText, localDialog), 2);
      localDialog.setNeutralButton(2131427379, new agz(localDialog), 2);
      localDialog.show();
    }

    public final List<OperatingModel> createOperatingBarDataList()
    {
      ArrayList localArrayList = new ArrayList();
      if ((this.j == 1) || (this.j == 0))
        localArrayList.add(new OperatingModel(0, 2131427397, 1));
      while (true)
      {
        ((OperatingModel)localArrayList.get(0)).setEnable(false);
        return localArrayList;
        if (this.j == 2)
          localArrayList.add(new OperatingModel(0, 2131430139, 1));
        else
          localArrayList.add(new OperatingModel(0, 2131428533, 1));
      }
    }

    public final void onBackClick()
    {
      super.onBackClick();
      if (this.j == 3)
        ha.a(this.mContext, 2131429450);
    }

    public final void onCreate()
    {
      super.onCreate();
      ((Activity)this.mContext).getWindow().setSoftInputMode(3);
      this.g = new mw();
      this.h = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
      this.i = ho.a();
      this.a = ((TextView)findViewById(2131230727));
      this.b = ((ImageView)findViewById(2131230726));
      this.c = ((EditText)findViewById(2131230729));
      this.d = ((EditText)findViewById(2131230731));
      TextView localTextView1 = (TextView)findViewById(2131231244);
      TextView localTextView2 = (TextView)findViewById(2131231245);
      this.c.addTextChangedListener(this.l);
      this.d.addTextChangedListener(this.l);
      localTextView1.setText(Html.fromHtml("<u>" + this.mContext.getString(2131429534) + "</u>"));
      localTextView1.setOnClickListener(new ahc(this));
      localTextView2.setText(Html.fromHtml("<u>" + this.mContext.getString(2131429434) + "</u>"));
      localTextView2.setOnClickListener(new ahd(this));
      if (this.j == 0)
        if (PickproofAccountLoginActivity.this.getIntent().getBooleanExtra("update", false))
        {
          localTextView2.setVisibility(8);
          localTextView1.setVisibility(4);
          String str2 = this.i.bg();
          if ((str2 != null) && (!"".equals(str2)))
            this.c.setText(str2);
        }
      while (true)
      {
        a(null);
        return;
        localTextView2.setVisibility(0);
        break;
        if ((this.j != 1) && (this.j != 2) && (this.j == 3))
        {
          localTextView2.setVisibility(8);
        }
        else
        {
          localTextView2.setVisibility(8);
          EditText localEditText = this.c;
          String str1 = this.mContext.getString(2131429459);
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = this.h.getBindQQNum().substring(0, 2);
          localEditText.setHint(String.format(str1, arrayOfObject));
        }
      }
    }

    public final void onHandlerMessage(Message paramMessage)
    {
      if (this.k)
        switch (paramMessage.what)
        {
        default:
        case 100000:
        case 100001:
        case 100002:
        case 100003:
        case 100004:
        case 100005:
        }
      while (true)
      {
        return;
        if (this.j == 4)
        {
          Intent localIntent3 = new Intent();
          localIntent3.putExtra("sid", this.g.d);
          PickproofAccountLoginActivity.this.setResult(-1, localIntent3);
          PickproofAccountLoginActivity.this.finish();
        }
        else if (this.j == 2)
        {
          Intent localIntent4 = new Intent(this.mContext, PickproofAccountLoginActivity.class);
          localIntent4.putExtra("action", 3);
          PickproofAccountLoginActivity.this.startActivity(localIntent4);
          PickproofAccountLoginActivity.this.finish();
        }
        else
        {
          new ahh(this).start();
          continue;
          String str2 = String.valueOf(paramMessage.obj);
          if (this.j == 1)
          {
            this.h.setBindQQNum("");
            this.i.B(false);
            yb.a(this.mContext).a(false);
            Intent localIntent2 = new Intent(this.mContext, MainActivity.class);
            localIntent2.setFlags(67108864);
            this.mContext.startActivity(localIntent2);
          }
          while (true)
          {
            if (this.j != 0)
              break label381;
            this.mHandler.sendEmptyMessageDelayed(100005, 0L);
            this.i.U(true);
            if ((this.f == null) || (!this.f.isShowing()))
              break;
            this.f.dismiss();
            this.f = null;
            break;
            if (this.j == 3)
              ha.b(this.mContext, 2131429451);
            this.h.setBindQQNum(str2);
            String str3 = ft.c(this.mContext);
            this.i.p(str3);
            this.i.B(true);
            this.i.D(true);
            yb.a(this.mContext).a(true);
          }
          label381: getActivity().finish();
          if ((this.f != null) && (this.f.isShowing()))
          {
            this.f.dismiss();
            this.f = null;
            continue;
            ha.b(this.mContext, this.mContext.getString(2131429441));
            continue;
            int n = ((Integer)paramMessage.obj).intValue();
            if ((n != 1003) && (this.f != null) && (this.f.isShowing()))
            {
              this.f.dismiss();
              this.f = null;
            }
            switch (n)
            {
            case 0:
            default:
              Context localContext = this.mContext;
              String str1 = this.mContext.getResources().getString(2131427633);
              Object[] arrayOfObject = new Object[1];
              arrayOfObject[0] = Integer.valueOf(n);
              ha.b(localContext, String.format(str1, arrayOfObject));
              break;
            case -1000:
              ha.b(this.mContext, 2131427679);
              break;
            case -100:
              ha.b(this.mContext, 2131428852);
              break;
            case 1003:
              Message localMessage = this.mHandler.obtainMessage(100000);
              this.mHandler.sendMessage(localMessage);
              break;
            case 101:
              b();
              break;
            case 205:
              a(this.mContext.getString(2131427609));
              break;
            case 209:
              ha.b(this.mContext, 2131427610);
              b();
              break;
            case 203:
              a(this.mContext.getString(2131427614));
              this.d.setText("");
              continue;
              Bitmap localBitmap = (Bitmap)paramMessage.obj;
              if ((this.e != null) && (localBitmap != null))
              {
                this.e.setImageBitmap(localBitmap);
              }
              else if ((this.e != null) && (localBitmap == null))
              {
                this.e.setImageResource(2130837950);
                ha.a(this.mContext, 2131427613);
                continue;
                Intent localIntent1 = new Intent();
                localIntent1.setClass(this.mContext, PickproofUrgentContactActivity.class);
                this.mContext.startActivity(localIntent1);
                getActivity().finish();
              }
              break;
            }
          }
        }
      }
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
        a();
        nd.a().a(26384);
      }
    }

    public final void onPause()
    {
      super.onPause();
      this.k = false;
    }

    public final void onResume()
    {
      super.onResume();
      this.k = true;
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      if (this.j == 0)
        paramFrameworkTemplateUI.setTitleTextData(2131429439);
      while (true)
      {
        paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
        paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
        paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
        return;
        if (this.j == 1)
          paramFrameworkTemplateUI.setTitleTextData(2131429448);
        else if (this.j == 2)
          paramFrameworkTemplateUI.setTitleTextData(2131429448);
        else if (this.j == 3)
          paramFrameworkTemplateUI.setTitleTextData(2131429449);
        else
          paramFrameworkTemplateUI.setTitleTextData(2131429339);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity
 * JD-Core Version:    0.6.2
 */