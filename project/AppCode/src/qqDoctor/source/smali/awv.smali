.class final Lawv;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lawt;


# direct methods
.method constructor <init>(Lawt;)V
    .locals 0

    iput-object p1, p0, Lawv;->a:Lawt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    const-string v0, "smslog"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmk;

    const-string v1, "id"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lawv;->a:Lawt;

    invoke-static {v2}, Lawt;->b(Lawt;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lawv;->a:Lawt;

    invoke-static {v4}, Lawt;->a(Lawt;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lawv;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lawv;->a:Lawt;

    invoke-static {v3}, Lawt;->c(Lawt;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eq v1, v6, :cond_1

    iget-object v2, p0, Lawv;->a:Lawt;

    invoke-static {v2}, Lawt;->e(Lawt;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lawv;->a:Lawt;

    invoke-static {v1, v0}, Lawt;->b(Lawt;Lmk;)V

    :cond_1
    return-void
.end method
