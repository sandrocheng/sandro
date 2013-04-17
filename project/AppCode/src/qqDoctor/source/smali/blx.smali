.class final Lblx;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lblt;


# direct methods
.method constructor <init>(Lblt;)V
    .locals 0

    iput-object p1, p0, Lblx;->a:Lblt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lblx;->a:Lblt;

    invoke-static {v0, p2}, Lblt;->a(Lblt;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lblx;->a:Lblt;

    invoke-virtual {v0, p2}, Lblt;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
