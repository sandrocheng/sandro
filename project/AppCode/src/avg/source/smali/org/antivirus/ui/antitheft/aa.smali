.class final Lorg/antivirus/ui/antitheft/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/antitheft/StopShoutActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/StopShoutActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->a(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-static {v1}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->b(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-static {v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->c(Lorg/antivirus/ui/antitheft/StopShoutActivity;)Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-virtual {v1}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "stopshout"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/StopShoutActivity;->finish()V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/aa;->a:Lorg/antivirus/ui/antitheft/StopShoutActivity;

    const-string v1, "anti_theft"

    const-string v2, "stop_shout"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
