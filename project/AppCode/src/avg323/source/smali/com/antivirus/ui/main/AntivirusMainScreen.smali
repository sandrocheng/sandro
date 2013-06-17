.class public Lcom/antivirus/ui/main/AntivirusMainScreen;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/main/AntivirusMainScreen;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/antivirus/ui/main/ActivationActivity;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/antivirus/ui/main/HandheldMainActivity;

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "lcc"

    iget-object v2, p0, Lcom/antivirus/ui/main/AntivirusMainScreen;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/AntivirusMainScreen;->finish()V
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
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/main/AntivirusMainScreen;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/main/AntivirusMainScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lcc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/main/AntivirusMainScreen;->a:Ljava/lang/String;

    invoke-static {}, Lcom/antivirus/ui/main/AntivirusMainScreen;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/antivirus/ui/main/AntivirusMainScreen;->a(Ljava/lang/Class;)V

    return-void
.end method
