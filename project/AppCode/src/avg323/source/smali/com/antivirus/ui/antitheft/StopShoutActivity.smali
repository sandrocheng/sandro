.class public Lcom/antivirus/ui/antitheft/StopShoutActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/antivirus/ui/antitheft/ac;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/antitheft/ac;-><init>(Lcom/antivirus/ui/antitheft/StopShoutActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stopshout"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2328

    const/16 v3, 0x2329

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->finish()V

    const-string v0, "anti_theft"

    const-string v1, "stop_shout"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v4, v2}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/StopShoutActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_1

    const v0, 0x7f020042

    move v1, v0

    :goto_1
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->a(Lcom/avg/ui/general/r;)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_3

    const v0, 0x7f020043

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    invoke-static {v0}, Lcom/avg/ui/general/o;->b(Lcom/avg/ui/general/r;)I

    move-result v0

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->b()V

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/antivirus/ui/antitheft/ad;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/antitheft/ad;-><init>(Lcom/antivirus/ui/antitheft/StopShoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/StopShoutActivity;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
