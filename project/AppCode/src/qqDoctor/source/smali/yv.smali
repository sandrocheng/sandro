.class final Lyv;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lyr;


# direct methods
.method constructor <init>(Lyr;)V
    .locals 0

    iput-object p1, p0, Lyv;->a:Lyr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lho;->a(J)V

    new-instance v0, Lacc;

    iget-object v1, p0, Lyv;->a:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacc;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lacc;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lyv;->a:Lyr;

    iget-object v0, v0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->c()V

    return-void
.end method
