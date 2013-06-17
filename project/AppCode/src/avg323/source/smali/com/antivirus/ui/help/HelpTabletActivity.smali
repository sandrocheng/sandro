.class public Lcom/antivirus/ui/help/HelpTabletActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private A:Z

.field private B:Landroid/os/Handler;

.field private C:I

.field private D:Z

.field private E:Landroid/content/BroadcastReceiver;

.field n:Ljava/lang/Runnable;

.field private o:Z

.field private p:Lcom/avg/ui/general/d/b;

.field private q:Landroid/webkit/WebView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/app/ProgressDialog;

.field private x:Landroid/content/IntentFilter;

.field private y:Landroid/os/Handler;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->o:Z

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->p:Lcom/avg/ui/general/d/b;

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->v:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "inAppIntentFilterScreen"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->x:Landroid/content/IntentFilter;

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    iput-object v2, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->A:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->C:I

    iput-boolean v3, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->D:Z

    new-instance v0, Lcom/antivirus/ui/help/c;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/help/c;-><init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/antivirus/ui/help/d;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/help/d;-><init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->E:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/help/HelpTabletActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->B:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/antivirus/ui/help/HelpTabletActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->B:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/antivirus/ui/help/HelpTabletActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/antivirus/ui/help/HelpTabletActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/ui/help/HelpTabletActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/help/HelpTabletActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->x()V

    return-void
.end method

.method static synthetic h(Lcom/antivirus/ui/help/HelpTabletActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->w()V

    return-void
.end method

.method private u()V
    .locals 6

    const/4 v3, 0x0

    const-string v1, ""

    const v0, 0x7f090062

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/antivirus/ui/help/a;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/help/a;-><init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private v()V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    new-instance v1, Lcom/antivirus/ui/help/b;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/help/b;-><init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->E:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->C:I

    invoke-direct {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->u()V

    const-string v0, ""

    iput-boolean v3, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->o:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput-boolean v3, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->D:Z

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "/help.html"

    new-instance v1, Lcom/avg/toolkit/b/h;

    invoke-direct {v1, p0}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/avg/toolkit/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->u:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/tospro.html"

    :goto_2
    new-instance v1, Lcom/avg/toolkit/b/h;

    invoke-direct {v1, p0}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/avg/toolkit/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "/tos.html"

    goto :goto_2

    :pswitch_2
    const-string v0, "https://www.avg.com"

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->l()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-boolean v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->A:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->v()V

    new-instance v0, Lcom/avg/ui/general/d/b;

    invoke-direct {v0}, Lcom/avg/ui/general/d/b;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->p:Lcom/avg/ui/general/d/b;

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->p:Lcom/avg/ui/general/d/b;

    const v1, 0x7f0800bc

    const-string v2, "HelpFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->v:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->B:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->B:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->E:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->x:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/avg/ui/general/d/h;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/antivirus/ui/help/e;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/help/e;-><init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected m()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->w:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->setContentView(I)V

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f020157

    const v3, 0x7f020158

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(ZIILjava/lang/String;Z)V

    :goto_0
    if-nez p1, :cond_0

    iput-boolean v5, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->A:Z

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->p()V

    return-void

    :cond_1
    const v2, 0x7f02015a

    const v3, 0x7f02015b

    const-string v4, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(ZIILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->q()V

    invoke-super {p0}, Lcom/antivirus/ui/a;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/antivirus/ui/a;->onPause()V

    invoke-direct {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->w()V

    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->m()V

    invoke-virtual {p0}, Lcom/antivirus/ui/help/HelpTabletActivity;->k()V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a;->onRestart()V

    iget-object v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->q:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->D:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/antivirus/ui/help/HelpTabletActivity;->C:I

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(I)V

    :cond_0
    return-void
.end method
