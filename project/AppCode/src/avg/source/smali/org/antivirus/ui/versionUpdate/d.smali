.class final Lorg/antivirus/ui/versionUpdate/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    invoke-static {v0, p2}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;Lorg/antivirus/AVService$LocalBinder;)Lorg/antivirus/AVService$LocalBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/AVService$LocalBinder;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v1}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService$LocalBinder;->setVersionUpdateUIHandler(Lorg/antivirus/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/versionUpdate/e;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/versionUpdate/e;-><init>(Lorg/antivirus/ui/versionUpdate/d;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Disconnected"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;Lorg/antivirus/AVService$LocalBinder;)Lorg/antivirus/AVService$LocalBinder;

    return-void
.end method
