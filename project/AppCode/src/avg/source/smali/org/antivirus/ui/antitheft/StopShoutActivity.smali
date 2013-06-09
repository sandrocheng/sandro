.class public Lorg/antivirus/ui/antitheft/StopShoutActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/antivirus/ui/antitheft/z;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/antitheft/z;-><init>(Lorg/antivirus/ui/antitheft/StopShoutActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->setContentView(I)V

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090132

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-virtual {v2}, Lorg/antivirus/core/b/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f090131

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    if-nez v2, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lorg/antivirus/ui/antitheft/aa;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/antitheft/aa;-><init>(Lorg/antivirus/ui/antitheft/StopShoutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/StopShoutActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
