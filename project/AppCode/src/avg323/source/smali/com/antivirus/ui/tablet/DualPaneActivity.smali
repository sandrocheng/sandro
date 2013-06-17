.class public Lcom/antivirus/ui/tablet/DualPaneActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private A:Lcom/antivirus/ui/privacy/a;

.field private B:Lcom/avg/tuneup/battery/b;

.field private C:Landroid/os/Handler;

.field private D:Landroid/content/IntentFilter;

.field private E:Lcom/antivirus/ui/tablet/c;

.field private F:[Landroid/view/View;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/avg/ui/general/e/a;

.field private M:Lcom/avg/toolkit/ads/WebViewAdsManager;

.field private N:Landroid/view/View$OnClickListener;

.field private O:Landroid/widget/TabHost;

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/List;

.field public n:Lcom/antivirus/ui/protection/aj;

.field public o:Lcom/antivirus/a;

.field public p:Z

.field public q:I

.field private v:Lcom/antivirus/ui/protection/r;

.field private w:Lcom/antivirus/ui/privacy/b;

.field private x:Lcom/avg/tuneup/a/c;

.field private y:Lcom/antivirus/ui/antitheft/b;

.field private z:Lcom/antivirus/ui/antitheft/z;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->H:Z

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->I:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->p:Z

    iput-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    new-instance v0, Lcom/antivirus/ui/b/a/c;

    invoke-direct {v0}, Lcom/antivirus/ui/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    iput-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->N:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    iput-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/tablet/DualPaneActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;I)V
    .locals 4

    invoke-virtual {p1, p4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v0, 0x1020011

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    const v0, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f08000d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p7, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->F:[Landroid/view/View;

    aput-object v2, v0, p6

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Lcom/antivirus/ui/tablet/h;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/antivirus/ui/tablet/h;-><init>(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "EXTRA_GOTO"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/antivirus/ui/tablet/DualPaneActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->G:Z

    return v0
.end method

.method static synthetic b(Lcom/antivirus/ui/tablet/DualPaneActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/antivirus/ui/tablet/DualPaneActivity;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/tablet/DualPaneActivity;)Lcom/avg/toolkit/e/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0800bc

    const/4 v3, 0x0

    const-string v0, "Protection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Protection"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    const v1, 0x7f0800bb

    const-string v2, "ScanFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->v:Lcom/antivirus/ui/protection/r;

    const-string v1, "Protection"

    invoke-virtual {p0, v0, v4, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "protection"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->I:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->I:Z

    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->G:Z

    const-string v0, "Protection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ScanFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    invoke-virtual {p0, v3}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Z)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "category_app_landing"

    const-string v1, "action_protection"

    invoke-static {p0, v0, v1, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "Privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Privacy"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/privacy/b;->F()V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->A:Lcom/antivirus/ui/privacy/a;

    const v1, 0x7f0800bd

    const-string v2, "FooterFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    const-string v1, "Privacy"

    invoke-virtual {p0, v0, v4, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "privacy"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    const-string v0, "category_app_landing"

    const-string v1, "action_privacy"

    invoke-static {p0, v0, v1, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v0, "Performance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v0}, Lcom/avg/tuneup/a/c;->J()V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v4, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "performance"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    const-string v0, "category_app_landing"

    const-string v1, "action_performance"

    invoke-static {p0, v0, v1, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v0, "AntiTheftFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AntiTheftFragment"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->x()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const-string v1, "antitheft"

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V

    const-string v0, "category_app_landing"

    const-string v1, "action_anti_theft"

    invoke-static {p0, v0, v1, v5, v3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v6}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Z)V

    goto/16 :goto_1
.end method

.method private e(I)V
    .locals 6

    const v5, 0x7f0800bb

    const/4 v4, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0800be

    const v3, 0x7f0800bc

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    new-instance v0, Lcom/antivirus/ui/scan/results/m;

    invoke-direct {v0}, Lcom/antivirus/ui/scan/results/m;-><init>()V

    const-string v1, "ScanResultsFragment"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Protection"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual {p0, v4}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Z)V

    new-instance v0, Lcom/antivirus/ui/protection/a;

    invoke-direct {v0}, Lcom/antivirus/ui/protection/a;-><init>()V

    const-string v1, "FileScannerFragment"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Protection"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Lcom/avg/tuneup/a/c;->b(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    new-instance v0, Lcom/avg/tuneup/battery/c;

    invoke-direct {v0}, Lcom/avg/tuneup/battery/c;-><init>()V

    const-string v1, "BatterySaveSettingsFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/c;->b(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    new-instance v0, Lcom/avg/tuneup/traffic/y;

    invoke-direct {v0}, Lcom/avg/tuneup/traffic/y;-><init>()V

    const-string v1, "TrafficMeterFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/c;->b(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    new-instance v0, Lcom/avg/tuneup/traffic/a;

    invoke-direct {v0}, Lcom/avg/tuneup/traffic/a;-><init>()V

    const-string v1, "DataPlanSettingsFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/c;->b(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    new-instance v0, Lcom/avg/tuneup/taskkiller/d;

    invoke-direct {v0}, Lcom/avg/tuneup/taskkiller/d;-><init>()V

    const-string v1, "TaskKillerFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/a/c;->b(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    const-string v1, "Performance"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    new-instance v0, Lcom/avg/tuneup/storage/b;

    invoke-direct {v0}, Lcom/avg/tuneup/storage/b;-><init>()V

    const-string v1, "StorageFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const-string v0, "Performance"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v2, Lcom/antivirus/ui/tablet/c;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    const-string v2, "Privacy"

    invoke-virtual {p0, v0, v3, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    iget-object v0, v0, Lcom/antivirus/ui/privacy/b;->a:[Lcom/avg/ui/general/s;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    int-to-long v4, v3

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/privacy/b;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const-string v0, "Privacy"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v2, Lcom/antivirus/ui/tablet/c;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    const-string v2, "Privacy"

    invoke-virtual {p0, v0, v3, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->n()V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    iget-object v0, v0, Lcom/antivirus/ui/privacy/b;->a:[Lcom/avg/ui/general/s;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    int-to-long v4, v3

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/privacy/b;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const-string v0, "Privacy"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    sget v1, Lcom/antivirus/ui/tablet/c;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    const-string v1, "ScanFragment"

    invoke-virtual {p0, v0, v5, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->v:Lcom/antivirus/ui/protection/r;

    const-string v1, "Protection"

    invoke-virtual {p0, v0, v3, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Z)V

    const-string v0, "Protection"

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Ljava/lang/String;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avg/ui/general/r;->b:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/avg/ui/general/r;->b:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v0

    goto :goto_0
.end method

.method private f(I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->F:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v1, p1}, Lcom/antivirus/ui/tablet/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/tablet/c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->F:[Landroid/view/View;

    aget-object v0, v0, p1

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v1, p1}, Lcom/antivirus/ui/tablet/c;->d(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->F:[Landroid/view/View;

    aget-object v0, v0, p1

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v1, p1}, Lcom/antivirus/ui/tablet/c;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "Protection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Performance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Privacy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ScanFragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->D:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    iget-object v2, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    sget-object v3, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v2, v3}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/antivirus/ui/tablet/c;->a(Landroid/content/Intent;Lcom/antivirus/core/scanners/h;)V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/antivirus/ui/tablet/c;->e:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v()V
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    invoke-static {}, Lcom/avg/ui/general/o;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->w()V

    new-instance v0, Lcom/antivirus/ui/tablet/c;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/tablet/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    sget v0, Lcom/antivirus/ui/tablet/c;->e:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->F:[Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    sget-object v1, Lcom/avg/ui/general/t;->a:Lcom/avg/ui/general/t;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    const-string v4, "Protection"

    sget v6, Lcom/antivirus/ui/tablet/c;->a:I

    const v0, 0x7f09020f

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/antivirus/ui/tablet/c;->a:I

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    sget-object v1, Lcom/avg/ui/general/t;->b:Lcom/avg/ui/general/t;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    const-string v4, "Performance"

    sget v6, Lcom/antivirus/ui/tablet/c;->b:I

    const v0, 0x7f0900c6

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/antivirus/ui/tablet/c;->b:I

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    sget-object v1, Lcom/avg/ui/general/t;->c:Lcom/avg/ui/general/t;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    const-string v4, "AntiTheftFragment"

    sget v6, Lcom/antivirus/ui/tablet/c;->c:I

    const v0, 0x7f0900e9

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/antivirus/ui/tablet/c;->c:I

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    sget-object v1, Lcom/avg/ui/general/t;->d:Lcom/avg/ui/general/t;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    const-string v4, "Privacy"

    sget v6, Lcom/antivirus/ui/tablet/c;->d:I

    const v0, 0x7f090210

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/antivirus/ui/tablet/c;->d:I

    move-object v0, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;Landroid/view/LayoutInflater;Ljava/lang/String;Landroid/view/View;ILjava/lang/String;I)V

    :cond_3
    new-instance v0, Lcom/antivirus/ui/tablet/g;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/tablet/g;-><init>(Lcom/antivirus/ui/tablet/DualPaneActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->N:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->O:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/antivirus/ui/tablet/i;->a:[I

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/t;

    invoke-virtual {v0}, Lcom/avg/ui/general/t;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    sput v1, Lcom/antivirus/ui/tablet/c;->a:I

    goto :goto_1

    :pswitch_1
    sput v1, Lcom/antivirus/ui/tablet/c;->b:I

    goto :goto_1

    :pswitch_2
    sput v1, Lcom/antivirus/ui/tablet/c;->c:I

    goto :goto_1

    :pswitch_3
    sput v1, Lcom/antivirus/ui/tablet/c;->d:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/antivirus/ui/tablet/c;->e:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private x()Landroid/support/v4/app/Fragment;
    .locals 2

    invoke-static {p0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->z:Lcom/antivirus/ui/antitheft/z;

    if-nez v0, :cond_1

    new-instance v0, Lcom/antivirus/ui/antitheft/z;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/z;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->z:Lcom/antivirus/ui/antitheft/z;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->z:Lcom/antivirus/ui/antitheft/z;

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->z:Lcom/antivirus/ui/antitheft/z;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->y:Lcom/antivirus/ui/antitheft/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/antivirus/ui/antitheft/b;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->y:Lcom/antivirus/ui/antitheft/b;

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->y:Lcom/antivirus/ui/antitheft/b;

    goto :goto_0
.end method

.method private y()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AntitheftRegisterFragment"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "AntiTheftFragment"

    goto :goto_0
.end method

.method private z()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ZI)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->q:I

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->q:I

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x1

    check-cast p2, Lcom/antivirus/a;

    iput-object p2, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    new-instance v0, Lcom/antivirus/ui/protection/aj;

    invoke-direct {v0}, Lcom/antivirus/ui/protection/aj;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    sget-object v2, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v2}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/protection/aj;->a(Lcom/antivirus/core/scanners/h;)V

    new-instance v0, Lcom/antivirus/ui/protection/r;

    invoke-direct {v0}, Lcom/antivirus/ui/protection/r;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->v:Lcom/antivirus/ui/protection/r;

    new-instance v0, Lcom/antivirus/ui/performance/a;

    invoke-direct {v0}, Lcom/antivirus/ui/performance/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->x:Lcom/avg/tuneup/a/c;

    new-instance v0, Lcom/antivirus/ui/privacy/b;

    invoke-direct {v0}, Lcom/antivirus/ui/privacy/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->w:Lcom/antivirus/ui/privacy/b;

    new-instance v0, Lcom/antivirus/ui/privacy/a;

    invoke-direct {v0}, Lcom/antivirus/ui/privacy/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->A:Lcom/antivirus/ui/privacy/a;

    invoke-static {p0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/antivirus/ui/antitheft/z;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/z;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->z:Lcom/antivirus/ui/antitheft/z;

    :goto_0
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->u()V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Landroid/content/Intent;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_GOTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->e(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->invalidateOptionsMenu()V

    return-void

    :cond_1
    new-instance v0, Lcom/antivirus/ui/antitheft/b;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->y:Lcom/antivirus/ui/antitheft/b;

    goto :goto_0

    :cond_2
    const-string v0, "Protection"

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/tablet/c;->a(Landroid/content/Intent;)V

    sget v0, Lcom/antivirus/ui/tablet/c;->b:I

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(I)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/antivirus/ui/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->G:Z

    iput-object p3, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/antivirus/ui/tablet/DualPaneActivity;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public a(Landroid/view/Menu;II)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public a(Lcom/antivirus/ui/tablet/e;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/tablet/c;->a(Lcom/antivirus/ui/tablet/e;)V

    sget v0, Lcom/antivirus/ui/tablet/c;->a:I

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(I)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const v2, 0x7f0800bc

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->a_(Landroid/view/MenuItem;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->d(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->b(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    iget-boolean v1, v1, Lcom/avg/toolkit/e/a;->l:Z

    invoke-interface {v0, p0, v1}, Lcom/avg/ui/general/e/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->L:Lcom/avg/ui/general/e/a;

    invoke-interface {v0, p0}, Lcom/avg/ui/general/e/a;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a_(Landroid/view/MenuItem;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(Z)V
    .locals 4

    const v3, 0x7f0800be

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    const-string v1, "Privacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    if-eqz p1, :cond_1

    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const v1, 0x7f0800ba

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x4060

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(IF)V

    invoke-virtual {p0, v3}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->setVisibility(I)V

    return-void

    :cond_2
    const/high16 v0, 0x40c0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->C:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->D:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "BatteryStateBroadcastReceiver already registered"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/battery/b;->a(Landroid/os/Handler;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "BatteryStateBroadcastReceiver already unregistered"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected g()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/antivirus/ui/a/a/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/antivirus/ui/a/a/c;

    invoke-interface {v0}, Lcom/antivirus/ui/a/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->i()V

    goto :goto_0
.end method

.method public i()V
    .locals 3

    const v2, 0x7f0800be

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->G:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/antivirus/ui/a;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    const-string v1, "BatterySaveSettingsFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/avg/tuneup/battery/r;

    invoke-direct {v0}, Lcom/avg/tuneup/battery/r;-><init>()V

    const-string v1, "BatteryStateFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    const-string v1, "DataPlanSettingsFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/avg/tuneup/traffic/a;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/a;->a()V

    :cond_2
    new-instance v0, Lcom/avg/tuneup/traffic/y;

    invoke-direct {v0}, Lcom/avg/tuneup/traffic/y;-><init>()V

    const-string v1, "TrafficMeterFragment"

    invoke-virtual {p0, v0, v2, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->P:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public k()Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->q:I

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/c;->b()V

    sget v0, Lcom/antivirus/ui/tablet/c;->d:I

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(I)V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->E:Lcom/antivirus/ui/tablet/c;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/c;->a()V

    sget v0, Lcom/antivirus/ui/tablet/c;->c:I

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(I)V

    return-void
.end method

.method public n()V
    .locals 2

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->d(I)V

    const v0, 0x7f0800be

    const/high16 v1, 0x4080

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(IF)V

    const v0, 0x7f0800ba

    const/high16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(IF)V

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->setVisibility(I)V

    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/antivirus/ui/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0, p0, p1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const v1, 0x7f0800ba

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/high16 v0, 0x4060

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(IF)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40c0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v3, Lcom/antivirus/ui/tablet/DualPaneActivity;->r:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-boolean v2, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2

    invoke-static {p0}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    :cond_0
    :goto_0
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->setContentView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->D:Landroid/content/IntentFilter;

    new-instance v0, Lcom/avg/tuneup/battery/b;

    invoke-direct {v0, v2}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->B:Lcom/avg/tuneup/battery/b;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->C:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/antivirus/ui/tablet/f;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/tablet/f;-><init>(Lcom/antivirus/ui/tablet/DualPaneActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->C:Landroid/os/Handler;

    :cond_1
    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->v()V

    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->p()V

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    return-void

    :cond_2
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->K:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const v0, 0x7f0900f7

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const v0, 0x7f090010

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f09014d

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->l:Z

    if-nez v0, :cond_3

    const v0, 0x7f090020

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f090001

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    iget v0, v0, Lcom/avg/toolkit/e/a;->n:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->u:Lcom/avg/toolkit/e/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/e/a;->m:Z

    if-eqz v0, :cond_2

    :cond_5
    const v0, 0x7f09002e

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->M:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-virtual {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->b(Landroid/content/Intent;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->t:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EXTRA_GOTO"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->e(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ScannerClient"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->n:Lcom/antivirus/ui/protection/aj;

    invoke-virtual {v0, p1}, Lcom/antivirus/ui/protection/aj;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->c(Z)V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/antivirus/ui/a;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->c(Z)V

    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->J:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->z()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/tablet/DualPaneActivity;->H:Z

    new-instance v0, Lcom/avg/toolkit/e/g;

    invoke-direct {v0, p0}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->b()V

    goto :goto_0
.end method
