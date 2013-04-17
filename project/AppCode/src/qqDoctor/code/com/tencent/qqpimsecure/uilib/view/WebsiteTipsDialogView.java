package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.text.Html;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;
import nd;

public class WebsiteTipsDialogView extends LinearLayout
  implements View.OnClickListener, View.OnKeyListener
{
  private ButtonView mBtnBlockVisit;
  private ButtonView mBtnKeepVisit;
  private Context mContext;
  private String mLevel;
  private onAddDontRemindWebSiteListener mListener;
  private TextView mTvMessage;
  private TextView mTvMessage2;
  private TextView mTvMessage3;
  private TextView mTvTitle;
  private String mType;
  private String mUrl;

  public WebsiteTipsDialogView(Context paramContext, String paramString1, String paramString2, String paramString3, onAddDontRemindWebSiteListener paramonAddDontRemindWebSiteListener)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mLevel = paramString1;
    this.mType = paramString2;
    this.mUrl = paramString3;
    this.mListener = paramonAddDontRemindWebSiteListener;
    initView();
  }

  private void initView()
  {
    addView((LinearLayout)LayoutInflater.from(this.mContext).inflate(2130903083, null));
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.mTvTitle = ((TextView)findViewById(2131230771));
    this.mTvTitle.setText(2131430206);
    this.mTvMessage = ((TextView)findViewById(2131230750));
    this.mTvMessage2 = ((TextView)findViewById(2131230827));
    this.mTvMessage3 = ((TextView)findViewById(2131230828));
    this.mTvMessage2.setText(this.mUrl);
    if (this.mLevel.equals(this.mContext.getString(2131430213)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str1 = this.mContext.getString(2131430207);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.mType;
      localStringBuilder.append(String.format(str1, arrayOfObject1));
      Spanned localSpanned = Html.fromHtml(localStringBuilder.toString());
      this.mTvMessage.setText(localSpanned);
    }
    while (true)
    {
      this.mBtnKeepVisit = ((ButtonView)findViewById(2131230767));
      this.mBtnBlockVisit = ((ButtonView)findViewById(2131230766));
      this.mBtnKeepVisit.setOnClickListener(this);
      this.mBtnBlockVisit.setOnClickListener(this);
      setOnKeyListener(this);
      return;
      TextView localTextView = this.mTvMessage;
      String str2 = this.mContext.getString(2131430207);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.mType;
      localTextView.setText(String.format(str2, arrayOfObject2));
    }
  }

  public void onClick(View paramView)
  {
    WindowManager localWindowManager2;
    if (paramView == this.mBtnKeepVisit)
    {
      this.mListener.onAdd3MinDontRemindWebSite();
      this.mListener.reVisitUrl();
      nd.a().a(26412);
      localWindowManager2 = (WindowManager)this.mContext.getSystemService("window");
    }
    try
    {
      localWindowManager2.removeView(this);
      while (true)
      {
        label57: return;
        if (paramView == this.mBtnBlockVisit)
        {
          this.mListener.blockUrl();
          nd.a().a(26413);
          WindowManager localWindowManager1 = (WindowManager)this.mContext.getSystemService("window");
          try
          {
            localWindowManager1.removeView(this);
          }
          catch (Exception localException1)
          {
          }
        }
      }
    }
    catch (Exception localException2)
    {
      break label57;
    }
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (!paramBoolean)
      requestFocus();
    super.onWindowFocusChanged(paramBoolean);
  }

  public void showDialog()
  {
    nd.a().a(26391);
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(this, kg.f);
  }

  public static abstract interface onAddDontRemindWebSiteListener
  {
    public abstract void blockUrl();

    public abstract void onAdd3MinDontRemindWebSite();

    public abstract void reVisitUrl();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.WebsiteTipsDialogView
 * JD-Core Version:    0.6.2
 */