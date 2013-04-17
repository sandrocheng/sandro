.class public final Lafa;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V
    .locals 0

    iput-object p1, p0, Lafa;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lafa;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->n(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcd;

    move-result-object v0

    invoke-interface {v0}, Lcd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lafa;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->o(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x186a2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lafa;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->o(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
