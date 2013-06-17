package com.antivirus.ui.callmessagefilter.contacts;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.o;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.antivirus.ui.a;
import com.antivirus.ui.callmessagefilter.fragment.ContactsFragment;
import com.antivirus.ui.callmessagefilter.fragment.r;
import com.avg.ui.general.b.e;

public class ContactsViewActivity extends a
{
  private EditText n;
  private TextWatcher o;

  private void l()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230738);
    localLinearLayout.setVisibility(0);
    findViewById(2131230739).setVisibility(8);
    Button localButton = new Button(this, null, 2131099716);
    localButton.setBackgroundResource(2130837701);
    localButton.setOnClickListener(new i(this));
    localLinearLayout.addView(localButton);
  }

  private void m()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getString(2131296752));
    localBuilder.setIcon(2130837716);
    String[] arrayOfString = k();
    ContactsFragment localContactsFragment = (ContactsFragment)f().a(2131230866);
    int i = ((r)localContactsFragment.H()).a();
    localBuilder.setSingleChoiceItems(new e(this, i, arrayOfString), i, new j(this, localContactsFragment));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public String[] k()
  {
    return getResources().getStringArray(2131427336);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903063);
    a(true, 2130837540, 2130837541, "Contacts", false);
    this.n = ((EditText)findViewById(2131230865));
    this.n.setInputType(1073741825);
    this.n.setImeOptions(6);
    this.o = new h(this);
    this.n.addTextChangedListener(this.o);
    l();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.ContactsViewActivity
 * JD-Core Version:    0.6.2
 */