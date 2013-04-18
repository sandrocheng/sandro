.class public Lcom/keniu/security/traffic/TrafficFireWallMainActivity;
.super Landroid/app/Activity;
.source "TrafficFireWallMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/keniu/security/monitor/b;
.implements Lcom/keniu/security/traffic/ag;


# instance fields
.field a:[Lcom/keniu/security/traffic/f;

.field b:Lcom/keniu/security/monitor/a;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ListAdapter;

.field private i:Landroid/app/Dialog;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    .line 60
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    .line 62
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->d:Landroid/widget/Button;

    .line 63
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e:Landroid/widget/CheckBox;

    .line 64
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f:Landroid/widget/CheckBox;

    .line 65
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->g:Landroid/widget/RelativeLayout;

    .line 66
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    .line 67
    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->i:Landroid/app/Dialog;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->j:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->l:I

    .line 72
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->m:Z

    .line 285
    new-instance v0, Lcom/keniu/security/traffic/aj;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/aj;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 681
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 313
    const-string v0, "DroidWallPrefs"

    invoke-virtual {p0, v0, v5}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 316
    const-string v2, "BlockMode"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 317
    const-string v2, "BlockMode"

    const-string v3, "blacklist"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v4

    .line 321
    :goto_0
    const-string v3, "AllowedUids"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    const-string v2, "AllowedUids"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v4

    .line 325
    :cond_0
    const-string v3, "Interfaces"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "Interfaces"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v4

    .line 329
    :goto_1
    if-eqz v0, :cond_1

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/keniu/security/traffic/ak;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ak;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    .line 364
    new-instance v1, Lcom/keniu/security/traffic/al;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/traffic/al;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/keniu/security/traffic/al;->start()V

    .line 373
    return-void
.end method

.method private d()V
    .locals 7

    .prologue
    const v6, 0x7f080126

    .line 390
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    sget-object v1, Lcom/keniu/security/traffic/z;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 396
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 397
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    if-nez v0, :cond_1

    .line 398
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "app =============== null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 402
    iget v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->k:I

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/keniu/security/traffic/f;->a:I

    if-ne v1, v2, :cond_2

    .line 403
    iput v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->l:I

    .line 401
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    :cond_3
    new-instance v0, Lcom/keniu/security/traffic/am;

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/traffic/am;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/content/Context;[Lcom/keniu/security/traffic/f;Landroid/view/LayoutInflater;Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    .line 482
    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 483
    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 488
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080126

    .line 55
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    sget-object v1, Lcom/keniu/security/traffic/z;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "app =============== null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->k:I

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/keniu/security/traffic/f;->a:I

    if-ne v1, v2, :cond_2

    iput v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->l:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/keniu/security/traffic/am;

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/keniu/security/traffic/am;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/content/Context;[Lcom/keniu/security/traffic/f;Landroid/view/LayoutInflater;Ljava/text/DecimalFormat;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private e()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 515
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    .line 516
    new-instance v3, Lcom/keniu/security/util/aq;

    invoke-direct {v3, p0, v5}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 517
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 520
    const v0, 0x7f08011d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 522
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 523
    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 524
    const v1, 0x7f08011b

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    new-instance v5, Landroid/text/SpannableString;

    const v6, 0x7f0b05a8

    invoke-virtual {p0, v6}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 528
    new-instance v6, Lcom/keniu/security/traffic/ar;

    invoke-direct {v6, p0}, Lcom/keniu/security/traffic/ar;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    .line 529
    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    sub-int/2addr v8, v10

    const/16 v9, 0x11

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 531
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    sub-int/2addr v7, v11

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    sub-int/2addr v8, v10

    const/16 v9, 0x22

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 534
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 536
    const v1, 0x7f0b059c

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/keniu/security/traffic/an;

    invoke-direct {v5, p0, v0, v2}, Lcom/keniu/security/traffic/an;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/widget/CheckBox;Lcom/keniu/security/a;)V

    invoke-virtual {v3, v1, v5}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 550
    invoke-virtual {v3, v4}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 551
    invoke-virtual {v2}, Lcom/keniu/security/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v3}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 559
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 555
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    const v2, 0x3fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->k:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 634
    new-instance v0, Lcom/keniu/security/traffic/ao;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ao;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    .line 675
    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 676
    return-void
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->m:Z

    return v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_0

    .line 749
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->m:Z

    .line 751
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e()V

    .line 512
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 694
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    const v0, 0x7f0b037d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 698
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/f;

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 711
    :pswitch_1
    iget-boolean v1, v0, Lcom/keniu/security/traffic/f;->d:Z

    if-eq v1, p2, :cond_0

    .line 712
    iget v1, v0, Lcom/keniu/security/traffic/f;->a:I

    iget-boolean v2, v0, Lcom/keniu/security/traffic/f;->d:Z

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/q;->a(IZ)V

    .line 714
    iput-boolean p2, v0, Lcom/keniu/security/traffic/f;->d:Z

    .line 717
    iget-boolean v1, v0, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/keniu/security/traffic/f;->k:Z

    if-eqz v1, :cond_0

    .line 718
    iput-boolean v3, v0, Lcom/keniu/security/traffic/f;->k:Z

    .line 719
    const-string v1, "\u7981\u6b62\u6210\u529f\uff0c\u5df2\u53d6\u6d88\u8be5\u7a0b\u5e8f\u767d\u540d\u5355\u6743\u9650"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 722
    iget v0, v0, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v0, v4}, Lcom/keniu/security/traffic/q;->c(IZ)V

    goto :goto_0

    .line 704
    :pswitch_2
    iget-boolean v1, v0, Lcom/keniu/security/traffic/f;->c:Z

    if-eq v1, p2, :cond_0

    .line 705
    iput-boolean p2, v0, Lcom/keniu/security/traffic/f;->c:Z

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x7f080297
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 738
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 739
    invoke-static {}, Lcom/keniu/security/traffic/q;->h()V

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803af
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v4}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->requestWindowFeature(I)Z

    .line 79
    const v0, 0x7f030108

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string v1, "pkg_uid"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput-boolean v4, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->j:Z

    .line 83
    const-string v1, "pkg_uid"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->k:I

    .line 85
    :cond_0
    const v0, 0x7f0803af

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->d:Landroid/widget/Button;

    .line 86
    const v0, 0x7f0803ac

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->g:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f0803aa

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e:Landroid/widget/CheckBox;

    .line 88
    const v0, 0x7f0803ab

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f:Landroid/widget/CheckBox;

    .line 90
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b:Lcom/keniu/security/monitor/a;

    .line 91
    invoke-static {p0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 92
    const-string v0, "DroidWallPrefs"

    invoke-virtual {p0, v0, v5}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BlockMode"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "BlockMode"

    const-string v3, "blacklist"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v4

    :goto_0
    const-string v3, "AllowedUids"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "AllowedUids"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v4

    :cond_1
    const-string v3, "Interfaces"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Interfaces"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f0803b0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    .line 99
    new-instance v0, Lcom/keniu/security/traffic/ak;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ak;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    new-instance v1, Lcom/keniu/security/traffic/al;

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/traffic/al;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/keniu/security/traffic/al;->start()V

    .line 101
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/keniu/security/traffic/q;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/keniu/security/traffic/q;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/keniu/security/traffic/ah;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ah;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f:Landroid/widget/CheckBox;

    new-instance v1, Lcom/keniu/security/traffic/ai;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ai;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    invoke-static {}, Lcom/keniu/security/traffic/q;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    new-instance v0, Lcom/keniu/security/traffic/af;

    invoke-direct {v0, p0, p0}, Lcom/keniu/security/traffic/af;-><init>(Landroid/content/Context;Lcom/keniu/security/traffic/ag;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->i:Landroid/app/Dialog;

    .line 239
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 240
    invoke-static {}, Lcom/keniu/security/traffic/q;->f()V

    .line 248
    :cond_3
    :goto_2
    return-void

    .line 243
    :cond_4
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e()V

    goto :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v2, v5

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->h:Landroid/widget/ListAdapter;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/monitor/a;->a(I)Z

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 382
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 306
    new-instance v0, Lcom/keniu/security/traffic/ao;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/ao;-><init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 299
    invoke-static {}, Lcom/keniu/security/traffic/q;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    :cond_0
    return-void
.end method
