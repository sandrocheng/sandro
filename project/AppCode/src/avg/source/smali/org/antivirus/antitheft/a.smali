.class public final Lorg/antivirus/antitheft/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/antitheft/q;

.field public b:Lorg/antivirus/antitheft/z;

.field public c:Lorg/antivirus/antitheft/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/antivirus/core/Engine;Lorg/antivirus/core/EngineSettings;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/antivirus/antitheft/q;

    invoke-direct {v0}, Lorg/antivirus/antitheft/q;-><init>()V

    iput-object v0, p0, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lorg/antivirus/antitheft/r;

    invoke-direct {v3, v1}, Lorg/antivirus/antitheft/r;-><init>(Lorg/antivirus/antitheft/q;)V

    iput-object v3, v1, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, v1, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/antitheft/a;->a:Lorg/antivirus/antitheft/q;

    invoke-virtual {v1, v0}, Lorg/antivirus/antitheft/q;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/antivirus/antitheft/C2DMReceiver;->a(Landroid/content/Context;)V

    new-instance v1, Lorg/antivirus/antitheft/z;

    invoke-direct {v1}, Lorg/antivirus/antitheft/z;-><init>()V

    iput-object v1, p0, Lorg/antivirus/antitheft/a;->b:Lorg/antivirus/antitheft/z;

    iget-object v1, p0, Lorg/antivirus/antitheft/a;->b:Lorg/antivirus/antitheft/z;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lorg/antivirus/antitheft/z;->a:Landroid/content/Context;

    iput-object p3, v1, Lorg/antivirus/antitheft/z;->d:Lorg/antivirus/core/EngineSettings;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/antitheft/aa;

    invoke-direct {v2, v1}, Lorg/antivirus/antitheft/aa;-><init>(Lorg/antivirus/antitheft/z;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v1, Lorg/antivirus/antitheft/z;->b:Ljava/lang/Thread;

    iget-object v0, v1, Lorg/antivirus/antitheft/z;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lorg/antivirus/antitheft/j;

    invoke-direct {v0, p2, p3}, Lorg/antivirus/antitheft/j;-><init>(Lorg/antivirus/core/Engine;Lorg/antivirus/core/EngineSettings;)V

    iput-object v0, p0, Lorg/antivirus/antitheft/a;->c:Lorg/antivirus/antitheft/j;

    return-void
.end method
