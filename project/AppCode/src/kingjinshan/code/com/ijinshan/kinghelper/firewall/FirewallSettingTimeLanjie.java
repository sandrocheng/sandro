package com.ijinshan.kinghelper.firewall;

import android.app.TimePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.main.BaseTitleActivity;

public class FirewallSettingTimeLanjie extends BaseTitleActivity
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener
{
  private int a = 0;
  private int b = 0;

  private void a()
  {
    TextView localTextView1 = (TextView)findViewById(2131230847);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.a / 60);
    arrayOfObject1[1] = Integer.valueOf(this.a % 60);
    localTextView1.setText(String.format("%02d : %02d", arrayOfObject1));
    TextView localTextView2 = (TextView)findViewById(2131230848);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(this.b / 60);
    arrayOfObject2[1] = Integer.valueOf(this.b % 60);
    localTextView2.setText(String.format("%02d : %02d", arrayOfObject2));
    String str = dd.f().a();
    ((TextView)findViewById(2131230846)).setText("当前模式：" + str);
  }

  private void a(boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = this.a / 60;
      if (!paramBoolean)
        break label59;
    }
    label59: for (int j = this.a % 60; ; j = this.b % 60)
    {
      new TimePickerDialog(this, new ai(this, paramBoolean), i, j, true).show();
      return;
      i = this.b / 60;
      break;
    }
  }

  private void a(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      if (this.b == paramInt)
        Toast.makeText(this, getString(2131427831), 0).show();
    }
    else
      while (true)
      {
        return;
        if (this.a != paramInt)
          break;
        Toast.makeText(this, getString(2131427831), 0).show();
      }
    if (paramBoolean)
      this.a = paramInt;
    while (true)
    {
      dd.a(this.a);
      dd.b(this.b);
      a();
      break;
      this.b = paramInt;
    }
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton.getId() == 2131230844)
    {
      if (!paramBoolean)
        break label28;
      findViewById(2131230845).setEnabled(true);
      dd.b(true);
    }
    while (true)
    {
      return;
      label28: findViewById(2131230845).setEnabled(false);
      dd.b(false);
    }
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230847)
      a(true);
    do
      while (true)
      {
        return;
        if (paramView.getId() == 2131230848)
        {
          a(false);
        }
        else
        {
          if (paramView.getId() != 2131230845)
            break;
          startActivity(new Intent(this, FirewallSettingsNightActivity.class));
        }
      }
    while (paramView.getId() != 2131230843);
    CheckBox localCheckBox = (CheckBox)findViewById(2131230844);
    if (!localCheckBox.isChecked());
    for (boolean bool = true; ; bool = false)
    {
      localCheckBox.setChecked(bool);
      break;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903054);
    ((TextView)findViewById(2131230847)).setOnClickListener(this);
    ((TextView)findViewById(2131230848)).setOnClickListener(this);
    findViewById(2131230845).setOnClickListener(this);
    findViewById(2131230843).setOnClickListener(this);
    dd.a(this);
    this.a = dd.n();
    this.b = dd.o();
    a();
    CheckBox localCheckBox = (CheckBox)findViewById(2131230844);
    localCheckBox.setOnCheckedChangeListener(this);
    if (dd.e())
    {
      localCheckBox.setChecked(true);
      findViewById(2131230845).setEnabled(true);
    }
    while (true)
    {
      return;
      localCheckBox.setChecked(false);
      findViewById(2131230845).setEnabled(false);
    }
  }

  protected void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSettingTimeLanjie
 * JD-Core Version:    0.6.2
 */