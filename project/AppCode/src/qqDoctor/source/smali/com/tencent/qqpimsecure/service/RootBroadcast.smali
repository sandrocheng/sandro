.class public Lcom/tencent/qqpimsecure/service/RootBroadcast;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lza;

    invoke-direct {v0, p1}, Lza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lza;->start()V

    return-void
.end method
