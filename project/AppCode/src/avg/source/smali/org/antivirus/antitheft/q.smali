.class public final Lorg/antivirus/antitheft/q;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Timer;

.field public b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    iput-object v0, p0, Lorg/antivirus/antitheft/q;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lorg/antivirus/AVSettings;->getPermLock()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/antitheft/LockScreen;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    new-instance v1, Lorg/antivirus/antitheft/s;

    invoke-direct {v1, p0, p1, v0}, Lorg/antivirus/antitheft/s;-><init>(Lorg/antivirus/antitheft/q;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/antitheft/q;->a:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method
