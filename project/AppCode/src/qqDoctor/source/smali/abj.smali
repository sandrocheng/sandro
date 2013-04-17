.class final Labj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Labh;


# direct methods
.method constructor <init>(Labh;)V
    .locals 0

    iput-object p1, p0, Labj;->a:Labh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Labh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labj;->a:Labh;

    invoke-static {v0}, Labh;->a(Labh;)V

    :cond_0
    return-void
.end method
