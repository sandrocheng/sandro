.class final Lbaa;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lazu;


# direct methods
.method constructor <init>(Lazu;)V
    .locals 0

    iput-object p1, p0, Lbaa;->a:Lazu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbaa;->a:Lazu;

    invoke-static {v0}, Lazu;->a(Lazu;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->b()V

    :cond_0
    return-void
.end method
