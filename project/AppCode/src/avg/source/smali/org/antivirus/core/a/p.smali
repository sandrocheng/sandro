.class final Lorg/antivirus/core/a/p;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lorg/antivirus/core/a/n;


# direct methods
.method private constructor <init>(Lorg/antivirus/core/a/n;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/a/p;->a:Lorg/antivirus/core/a/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/antivirus/core/a/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/core/a/p;-><init>(Lorg/antivirus/core/a/n;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/a/p;->a:Lorg/antivirus/core/a/n;

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/a/p;->a:Lorg/antivirus/core/a/n;

    invoke-static {v0}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/n;)Z

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/core/a/p;->a:Lorg/antivirus/core/a/n;

    invoke-virtual {v0}, Lorg/antivirus/core/a/n;->a()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
