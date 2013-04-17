.class final Lbiq;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lbip;


# direct methods
.method constructor <init>(Lbip;)V
    .locals 0

    iput-object p1, p0, Lbiq;->a:Lbip;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbiq;->a:Lbip;

    invoke-static {v0}, Lbip;->a(Lbip;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
