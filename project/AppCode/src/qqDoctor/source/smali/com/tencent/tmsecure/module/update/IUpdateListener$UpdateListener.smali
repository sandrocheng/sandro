.class public final Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/update/IUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateListener"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/update/IUpdateListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tmsecure/module/update/IUpdateListener;->onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    :cond_0
    return-void
.end method

.method public final onUpdateCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/update/IUpdateListener;->onUpdateCanceled()V

    :cond_0
    return-void
.end method

.method public final onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tmsecure/module/update/IUpdateListener;->onUpdateEvent(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    :cond_0
    return-void
.end method

.method public final onUpdateFinished()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/update/IUpdateListener;->onUpdateFinished()V

    :cond_0
    return-void
.end method

.method public final onUpdateStarted()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/update/IUpdateListener;->onUpdateStarted()V

    :cond_0
    return-void
.end method
