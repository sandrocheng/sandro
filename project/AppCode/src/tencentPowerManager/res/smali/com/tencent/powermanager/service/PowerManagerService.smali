.class public Lcom/tencent/powermanager/service/PowerManagerService;
.super Lcom/tencent/tmsecure/common/TMSService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/TMSService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/tmsecure/common/TMSService;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/tmsecure/common/TMSService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method
