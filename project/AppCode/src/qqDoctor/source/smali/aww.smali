.class final Laww;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lawt;


# direct methods
.method constructor <init>(Lawt;)V
    .locals 0

    iput-object p1, p0, Laww;->a:Lawt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "smslog"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmk;

    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Laww;->a:Lawt;

    invoke-static {v2}, Lawt;->g(Lawt;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Laww;->a:Lawt;

    invoke-static {v3}, Lawt;->f(Lawt;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->a(Lmk;)Z

    move-result v2

    iput-boolean v2, v0, Lmk;->i:Z

    iget-boolean v2, v0, Lmk;->i:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->h(Lawt;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->h(Lawt;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Laww;->a:Lawt;

    invoke-static {v1}, Lawt;->i(Lawt;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->j(Lawt;)V

    iget-object v0, p0, Laww;->a:Lawt;

    invoke-static {v0}, Lawt;->k(Lawt;)Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/InterceptMMSView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laww;->a:Lawt;

    invoke-static {v2}, Lawt;->h(Lawt;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Laww;->a:Lawt;

    invoke-static {v2}, Lawt;->h(Lawt;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Laww;->a:Lawt;

    invoke-static {v3}, Lawt;->l(Lawt;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Laww;->a:Lawt;

    invoke-static {v2}, Lawt;->m(Lawt;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lawx;

    invoke-direct {v3, p0, v0, v1}, Lawx;-><init>(Laww;Lmk;I)V

    invoke-static {v2, v3}, La;->a(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_0
.end method
