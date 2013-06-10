.class public Lorg/antivirus/tuneup/TrafficMeterActivity;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field public a:I

.field final b:Ljava/util/ArrayList;

.field c:Landroid/widget/Button;

.field private d:Lorg/antivirus/tuneup/b;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/TrafficMeterActivity;Lorg/antivirus/tuneup/b;)Lorg/antivirus/tuneup/b;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->d:Lorg/antivirus/tuneup/b;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->c()V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/tuneup/TrafficMeterActivity;Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/InstalledApp;

    :try_start_0
    iget-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lorg/antivirus/ui/InstalledApp;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    const/16 v2, 0x8

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/Button;

    const/4 v2, 0x0

    const v3, 0x7f06003d

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/tuneup/bf;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/bf;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    new-instance v2, Lorg/antivirus/tuneup/bg;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/bg;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lorg/antivirus/tuneup/TrafficMeterActivity;)V
    .locals 14

    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->c()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lorg/antivirus/ui/InstalledApp;

    invoke-direct {v7}, Lorg/antivirus/ui/InstalledApp;-><init>()V

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v7, Lorg/antivirus/ui/InstalledApp;->mPackageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v7, Lorg/antivirus/ui/InstalledApp;->mPackageLocation:Ljava/lang/String;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;)[J

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    iput-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    iput-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    :cond_0
    iget-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    iget-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_3

    :cond_1
    iget-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->inTraffic:J

    cmp-long v1, v8, v12

    if-gtz v1, :cond_2

    iget-wide v8, v7, Lorg/antivirus/ui/InstalledApp;->outTraffic:J

    cmp-long v1, v8, v12

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lorg/antivirus/ui/InstalledApp;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(I)[J

    move-result-object v1

    goto :goto_1

    :cond_5
    iput-object v4, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    new-instance v1, Lorg/antivirus/tuneup/a;

    const/4 v2, -0x4

    invoke-direct {v1, v2}, Lorg/antivirus/tuneup/a;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    new-instance v0, Lorg/antivirus/tuneup/bj;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/bj;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/tuneup/bk;

    invoke-direct {v1, p0, v3}, Lorg/antivirus/tuneup/bk;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;Landroid/content/pm/PackageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic d(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0800f8

    const/4 v1, 0x0

    const/16 v3, 0x8

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v2

    const v1, 0x7f0800f2

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800f4

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    const v1, 0x7f0800f7

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0800ee

    invoke-virtual {p0, v1}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iput-object v5, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->d:Lorg/antivirus/tuneup/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->d:Lorg/antivirus/tuneup/b;

    invoke-virtual {v1, v5}, Lorg/antivirus/tuneup/b;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->d:Lorg/antivirus/tuneup/b;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    :cond_0
    invoke-virtual {p0, v4}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/antivirus/tuneup/bh;

    invoke-direct {v3, p0, v2, v0}, Lorg/antivirus/tuneup/bh;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;ZLandroid/widget/TableLayout;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lorg/antivirus/tuneup/TrafficMeterActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/tuneup/TrafficMeterActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lorg/antivirus/tuneup/TrafficMeterActivity;)Lorg/antivirus/tuneup/b;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->d:Lorg/antivirus/tuneup/b;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 2

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/performance/PerformanceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2442

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020022

    const v3, 0x7f020023

    const v0, 0x7f09011c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/TrafficMeterActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->f:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    const v2, 0x7f080069

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->c()V

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    new-instance v1, Lorg/antivirus/tuneup/be;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/be;-><init>(Lorg/antivirus/tuneup/TrafficMeterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/TrafficMeterActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    invoke-direct {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->c()V

    invoke-direct {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->d()V

    invoke-virtual {p0}, Lorg/antivirus/tuneup/TrafficMeterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "data_usage"

    const-string v2, "opened_from_notification"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
