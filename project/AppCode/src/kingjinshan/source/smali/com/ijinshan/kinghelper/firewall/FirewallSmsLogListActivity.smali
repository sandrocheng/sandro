.class public Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;
.super Landroid/app/ListActivity;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/keniu/security/service/f;


# static fields
.field private static final d:Ljava/lang/String; = "FirewallSmsLogListActivity"

.field private static final e:Z = true


# instance fields
.field public a:Z

.field b:Landroid/os/Handler;

.field private c:Lcom/ijinshan/kinghelper/firewall/bw;

.field private f:Lcom/keniu/security/a;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/database/Cursor;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

.field private m:Landroid/content/ServiceConnection;

.field private n:Z

.field private o:Landroid/widget/PopupWindow;

.field private p:J

.field private q:Landroid/content/DialogInterface$OnClickListener;

.field private r:Landroid/content/DialogInterface$OnClickListener;

.field private s:Lcom/hoi/widget/o;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a:Z

    .line 272
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    .line 273
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bh;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bh;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->m:Landroid/content/ServiceConnection;

    .line 653
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->n:Z

    .line 856
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    .line 857
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->p:J

    .line 1004
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bc;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bc;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 1016
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bd;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bd;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 1078
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    .line 1214
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bn;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bn;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Z)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 546
    new-instance v2, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 547
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030038

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 550
    const v0, 0x7f08011a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 552
    const v1, 0x7f080119

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 554
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 555
    const v4, 0x7f0b0262

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 556
    new-instance v4, Lcom/ijinshan/kinghelper/firewall/bs;

    invoke-direct {v4, p0}, Lcom/ijinshan/kinghelper/firewall/bs;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 574
    :goto_0
    const v0, 0x7f0b0219

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 575
    const v0, 0x7f0b022a

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bt;

    invoke-direct {v3, p0, v1}, Lcom/ijinshan/kinghelper/firewall/bt;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 593
    const v0, 0x7f0b022b

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bu;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/bu;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 604
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0

    .line 572
    :cond_0
    const v0, 0x7f0b0175

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Lcom/ijinshan/kinghelper/firewall/bw;)Lcom/ijinshan/kinghelper/firewall/bw;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    return-object p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 668
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 671
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 675
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_0

    .line 677
    const-string v0, "\u4e0b\u5348 %02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 680
    :cond_0
    const-string v0, "\u4e0a\u5348 %02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :cond_1
    const-string v0, "%02d/%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IJLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 477
    :goto_0
    return-void

    .line 470
    :pswitch_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00c0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/br;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/br;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 473
    :pswitch_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-static {p0, p4}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    :cond_0
    const-string v0, "opwappushurl"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 330
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 331
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-static {p0, p5}, Lcom/keniu/security/util/af;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-static {p0, p4}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    .line 357
    invoke-interface {v0, p4}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 363
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :pswitch_4
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    .line 384
    :pswitch_5
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    .line 391
    :pswitch_6
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bo;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bo;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bp;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/bp;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bq;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/ijinshan/kinghelper/firewall/bq;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 395
    :pswitch_7
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 396
    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 398
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    .line 399
    if-lez v0, :cond_1

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0b0127

    goto :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 414
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 415
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 417
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 422
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 423
    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 424
    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bo;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bo;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 432
    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bp;

    invoke-direct {v2, p0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/bp;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 447
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 448
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ijinshan/kinghelper/firewall/bq;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 455
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;IJLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 82
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00c0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/br;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/br;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    :pswitch_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p4}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "opwappushurl"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0b004b

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p5}, Lcom/keniu/security/util/af;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p4}, Lcom/keniu/security/util/af;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/keniu/security/b/e;->e(Landroid/content/Context;)Lcom/keniu/security/b/r;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/keniu/security/b/r;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0126

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    const-string v1, "PickListActivity1_white_action"

    invoke-static {p0, v0, v3, v3, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x2

    const-string v2, "_PickListActivity1_black_action"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    goto :goto_0

    :pswitch_6
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0219

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0146

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bo;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bo;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0145

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bp;

    invoke-direct {v2, p0, p2, p3}, Lcom/ijinshan/kinghelper/firewall/bp;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bq;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/ijinshan/kinghelper/firewall/bq;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    long-to-int v0, p2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    if-lez v0, :cond_1

    const v0, 0x7f0b0125

    :goto_1
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const v0, 0x7f0b0127

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    long-to-int v1, p1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->f(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-static {v3, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    :cond_0
    if-lez v1, :cond_2

    const v0, 0x7f0b0128

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0b012a

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 980
    return-void
.end method

.method private b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 983
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 984
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 985
    if-ltz p1, :cond_1

    .line 986
    if-lez p1, :cond_0

    const v1, 0x7f0b016b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 992
    :goto_1
    if-lez p1, :cond_2

    const v1, 0x7f0b0218

    :goto_2
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bb;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bb;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1001
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 1002
    return-void

    .line 986
    :cond_0
    const v1, 0x7f0b016c

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 990
    :cond_1
    const v1, 0x7f0b016d

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    goto :goto_1

    .line 992
    :cond_2
    const v1, 0x7f0b03ca

    goto :goto_2
.end method

.method private b(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 484
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 486
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 487
    const v1, 0x7f0b00c0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 489
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 490
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/br;

    invoke-direct {v2, p0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/br;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;J)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 508
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 509
    return-void
.end method

.method private b(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 513
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 514
    invoke-static {p3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 519
    :cond_0
    long-to-int v1, p1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->f(I)I

    move-result v1

    .line 521
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 522
    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 526
    const-string v2, ""

    invoke-static {v3, v0, v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 531
    :cond_1
    if-lez v1, :cond_2

    .line 532
    const v0, 0x7f0b0128

    .line 537
    :goto_1
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 540
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 541
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    goto :goto_0

    .line 534
    :cond_2
    const v0, 0x7f0b012a

    goto :goto_1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h()V

    return-void
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->g:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/ijinshan/kinghelper/firewall/bw;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 298
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 300
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 610
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 611
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_force_rubbish_scan"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->v()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h()V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08011c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bj;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bj;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0230

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bk;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bk;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0231

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bl;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/bl;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 630
    :cond_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_rubbish_scan_res"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 632
    if-lez v0, :cond_0

    .line 633
    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b(I)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b011d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ax;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ax;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b00b2

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 825
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 827
    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 828
    const v1, 0x7f0b011d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 830
    const v1, 0x7f0b00d6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 831
    const v1, 0x7f0b00d5

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ax;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ax;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 849
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 854
    :goto_0
    return-void

    .line 851
    :cond_0
    const v0, 0x7f0b00b2

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1030
    const-string v1, "vnd.android.cursor.dir/sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1032
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_report_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1034
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1035
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1039
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    if-eqz v0, :cond_0

    .line 1046
    new-instance v0, Lcom/hoi/widget/o;

    invoke-direct {v0, p0, v4}, Lcom/hoi/widget/o;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    .line 1047
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    .line 1048
    const v1, 0x7f0b015c

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setTitle(I)V

    .line 1049
    const v1, 0x7f0b0164

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->a(Ljava/lang/CharSequence;)V

    .line 1051
    invoke-virtual {v0}, Lcom/hoi/widget/o;->b()V

    .line 1052
    invoke-virtual {v0, v4}, Lcom/hoi/widget/o;->a(Z)V

    .line 1053
    invoke-virtual {v0, v4}, Lcom/hoi/widget/o;->setCancelable(Z)V

    .line 1054
    invoke-virtual {v0, v4}, Lcom/hoi/widget/o;->a(I)V

    .line 1055
    invoke-virtual {v0, v4}, Lcom/hoi/widget/o;->b(I)V

    .line 1056
    const/4 v1, -0x1

    const v2, 0x7f0b025b

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->q:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/o;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1059
    const/4 v1, -0x3

    const v2, 0x7f0b025c

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->r:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hoi/widget/o;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1062
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/be;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/be;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1}, Lcom/hoi/widget/o;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1069
    invoke-virtual {v0}, Lcom/hoi/widget/o;->show()V

    .line 1071
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-virtual {v0}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->w()V

    .line 1073
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->x()V

    .line 1074
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-virtual {v0}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnd.android.cursor.dir/sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_report_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private i()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1125
    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 1127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1130
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1132
    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1133
    const v0, 0x7f08011c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1135
    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1136
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bj;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bj;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1155
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 1157
    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 1159
    const v2, 0x7f0b0230

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bk;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bk;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1169
    const v2, 0x7f0b0231

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bl;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/bl;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 1181
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 1182
    return-object v0
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    return-object v0
.end method

.method static synthetic j(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/hoi/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->s:Lcom/hoi/widget/o;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1186
    const-string v0, "date DESC"

    invoke-static {v1, v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i:Landroid/database/Cursor;

    .line 1188
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1190
    return-void
.end method

.method static synthetic k(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Lcom/keniu/security/a;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1201
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bm;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bm;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bm;->start()V

    .line 1212
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1232
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    return-void
.end method

.method static synthetic l(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "date DESC"

    invoke-static {v1, v1, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic m(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic o(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->i:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 303
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1112
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bi;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/kinghelper/firewall/bi;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;I)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1122
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1094
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bg;

    invoke-direct {v0, p0, p2, p1}, Lcom/ijinshan/kinghelper/firewall/bg;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;II)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1107
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/bf;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/bf;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1090
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->p:J

    .line 868
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 873
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 875
    :pswitch_0
    iget-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->p:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 879
    iput-object v7, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 882
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 884
    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 887
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    .line 890
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 891
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v5, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 893
    const v1, 0x7f080312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ay;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/ay;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    const v1, 0x7f080314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/az;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/az;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    const v1, 0x7f080316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ba;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ba;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->p:J

    goto :goto_0

    .line 929
    :pswitch_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Z)V

    .line 931
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 939
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    const v1, -0x9b44ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 873
    :pswitch_data_0
    .packed-switch 0x7f080099
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->requestWindowFeature(I)Z

    .line 118
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->setContentView(I)V

    .line 119
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    .line 120
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/au;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/au;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 197
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 202
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/bm;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/firewall/bm;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/bm;->start()V

    .line 211
    const-string v2, "FirewallSmsLogListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query sms cost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p1, :cond_0

    .line 216
    const-string v0, "smsman_log"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a()V

    .line 220
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 222
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    .line 226
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 640
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 641
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 643
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 648
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-virtual {v0, p0}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b(Lcom/keniu/security/service/f;)V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->l:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    .line 651
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 968
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    const-string v0, "FirewallLogDetailActivity_LOG_TYPE"

    const-string v2, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0, p3}, Lcom/ijinshan/kinghelper/firewall/bw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 972
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 974
    const-string v2, "FirewallLogDetailActivity_LOG_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 975
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 976
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 949
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 950
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 954
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    .line 955
    const/4 v0, 0x1

    .line 962
    :goto_0
    return v0

    .line 958
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startActivity(Landroid/content/Intent;)V

    .line 959
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->finish()V

    .line 962
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->o:Landroid/widget/PopupWindow;

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->b(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x7f0800a0

    const/4 v3, 0x0

    .line 230
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 231
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 232
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    .line 233
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/df;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    const v1, -0x9b44ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    :goto_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->b(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 249
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a()V

    .line 250
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->c:Lcom/ijinshan/kinghelper/firewall/bw;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->S()V

    .line 254
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_0
    :goto_1
    return-void

    .line 239
    :cond_1
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    const v1, -0x1c57d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->Q()V

    .line 262
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 657
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ">>>>>>>>>>>>>>>.onStart"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 659
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->n:Z

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 661
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_force_rubbish_scan"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->h()V

    .line 664
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->n:Z

    .line 665
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->f:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lcom/keniu/security/util/aq;

    invoke-direct {v1, p0, v4}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0137

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08011c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0261

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bj;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bj;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0230

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bk;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/firewall/bk;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v2, 0x7f0b0231

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/bl;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/bl;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_rubbish_scan_res"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b(I)V

    goto/16 :goto_0
.end method
