package com.avast.android.mobilesecurity.app.webshield;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.mobilesecurity.engine.ak;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WebshieldActivity extends Activity
{
  private Uri a;
  private List b;
  private n c;
  private String d;

  public static void call(Context paramContext, Uri paramUri, List paramList, n paramn, int paramInt, String paramString)
  {
    Intent localIntent = new Intent(paramContext, WebshieldActivity.class);
    localIntent.setData(paramUri);
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(Integer.valueOf(((ak)localIterator.next()).a()));
    localIntent.putIntegerArrayListExtra("results", localArrayList);
    localIntent.putExtra("browser", paramn.a());
    if (paramString != null)
      localIntent.putExtra("tab", paramString);
    localIntent.setFlags(paramInt);
    paramContext.startActivity(localIntent);
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    this.a = localIntent.getData();
    if (localIntent.hasExtra("results"));
    for (ArrayList localArrayList = localIntent.getIntegerArrayListExtra("results"); ; localArrayList = new ArrayList())
    {
      this.b = new ArrayList();
      Iterator localIterator1 = localArrayList.iterator();
      while (localIterator1.hasNext())
      {
        int n = ((Integer)localIterator1.next()).intValue();
        this.b.add(ak.a(n));
      }
    }
    this.d = localIntent.getStringExtra("tab");
    this.c = n.a(localIntent.getStringExtra("browser"));
    requestWindowFeature(1);
    setContentView(2130903075);
    findViewById(2131165304).setOnClickListener(new g(this));
    findViewById(2131165305).setOnClickListener(new h(this));
    TextView localTextView = (TextView)findViewById(2131165275);
    ImageView localImageView = (ImageView)findViewById(2131165273);
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator2 = this.b.iterator();
    int i = 0;
    int j = 0;
    if (localIterator2.hasNext())
    {
      ak localak = (ak)localIterator2.next();
      switch (i.a[localak.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        int k = i;
        int m = j;
        while (true)
        {
          localStringBuilder.append("\n");
          j = m;
          i = k;
          break;
          localStringBuilder.append(getText(2131493621));
          k = i;
          m = 1;
          continue;
          localStringBuilder.append(getText(2131493622));
          k = 1;
          m = j;
        }
        localStringBuilder.append(getText(2131493623));
      }
    }
    if (localStringBuilder.length() > 2)
      localStringBuilder.delete(-2 + localStringBuilder.length(), localStringBuilder.length());
    localTextView.setText(localStringBuilder.toString());
    if ((j != 0) || (i != 0))
      localImageView.setImageResource(2130837799);
    while (true)
    {
      return;
      localImageView.setImageResource(2130837800);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.WebshieldActivity
 * JD-Core Version:    0.6.2
 */