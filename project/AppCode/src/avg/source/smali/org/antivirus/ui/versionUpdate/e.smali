.class final Lorg/antivirus/ui/versionUpdate/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/d;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/d;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->c(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/AVService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->b(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/AVService$LocalBinder;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    iget-object v1, v1, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v1}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Lorg/antivirus/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService$LocalBinder;->setVersionUpdateUIHandler(Lorg/antivirus/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/e;->a:Lorg/antivirus/ui/versionUpdate/d;

    iget-object v0, v0, Lorg/antivirus/ui/versionUpdate/d;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->d(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
