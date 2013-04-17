package com.tencent.qqpimsecure.ui.activity;

import adr;
import ads;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ContextMenuListMode;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.ContextMenuAdapter;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import hi;
import java.util.ArrayList;
import java.util.List;
import jb;
import jm;
import nd;
import zs;

public class NumberMarkDialog extends Activity
{
  private jb a;
  private hi b;
  private jm c;
  private zs d;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    CallLogEntity localCallLogEntity = (CallLogEntity)getIntent().getExtras().get("EXTRA_CALL_LOG_ENTITY");
    this.a = jb.a();
    this.b = new hi(0);
    if (jm.b == null)
      jm.b = new jm();
    this.c = jm.b;
    this.d = new zs();
    View localView = LayoutInflater.from(this).inflate(2130903191, null);
    TextView localTextView = (TextView)localView.findViewById(2131231184);
    String str = getString(2131428944);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localCallLogEntity.phonenum;
    localTextView.setText(String.format(str, arrayOfObject));
    localTextView.setTextColor(getResources().getColor(2131296282));
    localTextView.setTextSize(15.0F);
    ImageView localImageView = (ImageView)localView.findViewById(2131231183);
    localImageView.setVisibility(0);
    localImageView.setImageResource(2130838142);
    setContentView(localView);
    ListView localListView = (ListView)localView.findViewById(2131231059);
    localListView.setPadding(0, 0, 0, 0);
    ButtonView localButtonView = (ButtonView)localView.findViewById(2131231185);
    localButtonView.setClickable(true);
    localButtonView.setFocusable(true);
    localButtonView.setOnClickListener(new adr(this));
    String[] arrayOfString1 = getResources().getStringArray(2131165229);
    ArrayList localArrayList1 = new ArrayList();
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      ContextMenuModel localContextMenuModel = new ContextMenuModel();
      String[] arrayOfString2 = arrayOfString1[i].split(",");
      localContextMenuModel.name = arrayOfString2[1];
      localContextMenuModel.eventCode = Integer.valueOf(arrayOfString2[0]).intValue();
      localArrayList1.add(localContextMenuModel);
    }
    ArrayList localArrayList2 = new ArrayList();
    for (int j = 0; j < localArrayList1.size(); j++)
    {
      ContextMenuListMode localContextMenuListMode = new ContextMenuListMode();
      localContextMenuListMode.setContextMenuName(((ContextMenuModel)localArrayList1.get(j)).name);
      localContextMenuListMode.setMarkType(((ContextMenuModel)localArrayList1.get(j)).markType);
      localArrayList2.add(localContextMenuListMode);
    }
    ArrayList localArrayList3 = new ArrayList();
    localArrayList3.add(new ListModel(localArrayList2, null, 1, false));
    localListView.setAdapter(new ContextMenuAdapter(this, localArrayList3));
    ((ContextMenuAdapter)localListView.getAdapter()).notifyDataSetChanged();
    localListView.setOnItemClickListener(new ads(this, localArrayList1, localCallLogEntity));
    nd.a().a(26468);
  }

  protected void onPause()
  {
    super.onPause();
    finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.NumberMarkDialog
 * JD-Core Version:    0.6.2
 */