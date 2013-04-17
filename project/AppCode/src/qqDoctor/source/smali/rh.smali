.class final Lrh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lhq;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Landroid/os/Handler;

.field private synthetic d:Lrb;


# direct methods
.method constructor <init>(Lrb;Lhq;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lrh;->d:Lrb;

    iput-object p2, p0, Lrh;->a:Lhq;

    iput-object p3, p0, Lrh;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p4, p0, Lrh;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lrh;->a:Lhq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v3, v0, Llf;->phonenum:Ljava/lang/String;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v0, v0, Llf;->phonenum:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->b()Z

    :cond_2
    iget-object v0, p0, Lrh;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lrh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->d()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lrh;->d:Lrb;

    iget-object v0, v0, Lrb;->a:Landroid/app/Activity;

    new-instance v2, Lsy;

    new-instance v3, Lhi;

    invoke-direct {v3, v8}, Lhi;-><init>(I)V

    new-instance v4, Ljp;

    const-string v5, "smslog"

    const-string v6, "mms_pdu"

    const-string v7, "mms_parts"

    invoke-direct {v4, v5, v6, v7}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v8, v3, v4}, Lsy;-><init>(Landroid/app/Activity;ZLhi;Ljp;)V

    invoke-virtual {v2, v1, v8}, Lsy;->a(Ljava/util/List;Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lrh;->c:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4
    iget-object v0, p0, Lrh;->a:Lhq;

    invoke-virtual {v0}, Lhq;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lrh;->d:Lrb;

    iget-object v0, v0, Lrb;->a:Landroid/app/Activity;

    new-instance v2, Lsy;

    new-instance v3, Lhi;

    invoke-direct {v3, v9}, Lhi;-><init>(I)V

    new-instance v4, Ljp;

    const-string v5, "securesmslog"

    const-string v6, "secure_mms_pdu"

    const-string v7, "secure_mms_parts"

    invoke-direct {v4, v5, v6, v7}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v9, v3, v4}, Lsy;-><init>(Landroid/app/Activity;ZLhi;Ljp;)V

    invoke-virtual {v2, v1, v9}, Lsy;->a(Ljava/util/List;Z)V

    goto :goto_1
.end method
