package com.avast.android.generic.app.account;

import android.content.res.Resources;
import android.widget.Button;
import android.widget.TextView;
import com.avast.a.a.a.c;
import com.avast.android.generic.q;
import com.avast.android.generic.s;
import com.avast.android.generic.z;

class ab
  implements Runnable
{
  ab(aa paramaa)
  {
  }

  public void run()
  {
    if (!this.a.r.isAdded());
    while (true)
    {
      return;
      switch (this.a.q)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 26:
      }
      while (true)
        if ((!this.a.a) && (this.a.q >= 6) && (this.a.q < 26))
        {
          if (!ConnectionCheckFragment.m(this.a.r))
          {
            TextView localTextView2 = ConnectionCheckFragment.a(this.a.r);
            ConnectionCheckFragment localConnectionCheckFragment = this.a.r;
            int j = z.bY;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(26 - this.a.q);
            localTextView2.setText(localConnectionCheckFragment.getString(j, arrayOfObject));
            this.a.r.a(1 + this.a.q);
            break;
            if (this.a.j)
              continue;
            this.a.a = true;
            this.a.d = this.a.r.getString(z.f);
            ConnectionCheckFragment.b(this.a.r).setText(z.A);
            ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ac(this));
            continue;
            if (this.a.l)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.D);
              ConnectionCheckFragment.b(this.a.r).setText(z.A);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ah(this));
              continue;
            }
            if (this.a.k)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.K);
              ConnectionCheckFragment.b(this.a.r).setText(z.A);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ai(this));
              continue;
            }
            if (this.a.m)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.R);
              ConnectionCheckFragment.b(this.a.r).setText(z.A);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new aj(this));
              continue;
            }
            if (!this.a.n)
              continue;
            this.a.a = true;
            this.a.d = this.a.r.getString(z.cL);
            ConnectionCheckFragment.b(this.a.r).setText(z.A);
            ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ak(this));
            continue;
            if (!this.a.g)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.bO);
              ConnectionCheckFragment.b(this.a.r).setText(z.A);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new al(this));
              continue;
            }
            if (!this.a.i)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.cO);
              ConnectionCheckFragment.b(this.a.r).setText(z.A);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new am(this));
              continue;
            }
            if (this.a.h)
              continue;
            this.a.a = true;
            this.a.d = this.a.r.getString(z.cp);
            ConnectionCheckFragment.b(this.a.r).setText(z.A);
            ConnectionCheckFragment.b(this.a.r).setOnClickListener(new an(this));
            continue;
            if (!this.a.e)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.r);
              ConnectionCheckFragment.b(this.a.r).setText(z.E);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
              continue;
            }
            if (!this.a.f)
            {
              this.a.a = true;
              this.a.d = this.a.r.getString(z.p);
              ConnectionCheckFragment.b(this.a.r).setText(z.E);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
              continue;
            }
            if (this.a.o.a() == v.a)
              continue;
            this.a.a = true;
            this.a.b = true;
            switch (ap.a[this.a.o.a().ordinal()])
            {
            default:
              this.a.d = this.a.r.getString(z.y);
            case 1:
            case 2:
            case 3:
            }
            while (true)
            {
              ConnectionCheckFragment.b(this.a.r).setText(z.cM);
              ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ao(this));
              break;
              this.a.d = this.a.r.getString(z.y);
              continue;
              this.a.d = this.a.r.getString(z.bZ);
              continue;
              this.a.d = this.a.r.getString(z.cC);
            }
            if (this.a.p != c.a)
            {
              this.a.a = true;
              switch (ap.b[this.a.p.ordinal()])
              {
              default:
                break;
              case 1:
              case 2:
              case 3:
              case 4:
                this.a.d = this.a.r.getString(z.af);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              case 5:
                this.a.d = this.a.r.getString(z.ch);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              case 6:
                this.a.d = this.a.r.getString(z.bz);
                ConnectionCheckFragment.b(this.a.r).setText(z.cW);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.l(this.a.r));
                break;
              case 7:
                this.a.d = this.a.r.getString(z.aB);
                ConnectionCheckFragment.b(this.a.r).setText(z.cW);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.l(this.a.r));
                break;
              case 8:
                this.a.d = this.a.r.getString(z.ca);
                ConnectionCheckFragment.b(this.a.r).setText(z.A);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ad(this));
                break;
              case 9:
                this.a.d = this.a.r.getString(z.V);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              case 10:
                this.a.d = this.a.r.getString(z.bk);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              case 11:
                this.a.d = this.a.r.getString(z.at);
                ConnectionCheckFragment.b(this.a.r).setText(z.i);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ae(this));
                break;
              case 12:
                this.a.d = this.a.r.getString(z.bG);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              case 13:
                this.a.d = this.a.r.getString(z.ad);
                ConnectionCheckFragment.b(this.a.r).setText(z.E);
                ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.k(this.a.r));
                break;
              }
            }
            com.avast.android.generic.ae.a(this.a.r.getActivity());
            continue;
            ConnectionCheckFragment.h(this.a.r);
            if (ConnectionCheckFragment.m(this.a.r))
              continue;
            this.a.a = true;
            this.a.d = this.a.r.getString(z.aG);
            ConnectionCheckFragment.b(this.a.r).setText(z.cW);
            ConnectionCheckFragment.b(this.a.r).setOnClickListener(ConnectionCheckFragment.l(this.a.r));
            continue;
          }
          this.a.r.a(26);
          break;
        }
      if (this.a.c)
        this.a.b = false;
      int i;
      if (this.a.a)
      {
        ConnectionCheckFragment.a(this.a.r).setText(this.a.d);
        TextView localTextView1 = ConnectionCheckFragment.a(this.a.r);
        if (this.a.b)
        {
          i = this.a.r.getResources().getColor(q.d);
          label2129: localTextView1.setTextColor(i);
          if (this.a.c)
          {
            ConnectionCheckFragment.b(this.a.r).setText(z.A);
            ConnectionCheckFragment.b(this.a.r).setOnClickListener(new af(this));
          }
        }
      }
      while (true)
      {
        ConnectionCheckFragment.b(this.a.r).setEnabled(true);
        ConnectionCheckFragment.b(this.a.r).setBackgroundResource(s.i);
        ConnectionCheckFragment.c(this.a.r).setEnabled(true);
        if ((this.a.a) || (this.a.q >= 6))
          break label2425;
        this.a.r.a(1 + this.a.q);
        break;
        i = this.a.r.getResources().getColor(q.f);
        break label2129;
        ConnectionCheckFragment.a(this.a.r).setText(z.cE);
        ConnectionCheckFragment.a(this.a.r).setTextColor(this.a.r.getResources().getColor(q.a));
        if (this.a.q < 6)
        {
          ConnectionCheckFragment.b(this.a.r).setText(this.a.r.getString(z.i));
        }
        else
        {
          ConnectionCheckFragment.b(this.a.r).setText(this.a.r.getString(z.i));
          ConnectionCheckFragment.b(this.a.r).setOnClickListener(new ag(this));
        }
      }
      label2425: if ((this.a.a) || (!this.a.r.isAdded()) || (this.a.r.getActivity() != null));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.ab
 * JD-Core Version:    0.6.2
 */