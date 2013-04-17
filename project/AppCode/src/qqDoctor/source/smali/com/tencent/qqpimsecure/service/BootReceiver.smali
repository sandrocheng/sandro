.class public Lcom/tencent/qqpimsecure/service/BootReceiver;
.super Lcom/tencent/tmsecure/common/TMSBootReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSBootReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/common/TMSBootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
