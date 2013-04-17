.class final Lamv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Landroid/os/Handler;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lams;


# direct methods
.method constructor <init>(Lams;ILjava/util/List;Landroid/os/Handler;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lamv;->e:Lams;

    iput p2, p0, Lamv;->a:I

    iput-object p3, p0, Lamv;->b:Ljava/util/List;

    iput-object p4, p0, Lamv;->c:Landroid/os/Handler;

    iput-object p5, p0, Lamv;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lamv;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lamv;->a:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lamv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lamv;->e:Lams;

    invoke-static {v2}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lamv;->e:Lams;

    invoke-static {v2}, Lams;->i(Lams;)Lsy;

    move-result-object v2

    iget v3, p0, Lamv;->a:I

    iget-object v4, p0, Lamv;->e:Lams;

    invoke-static {v4}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    invoke-virtual {v2, v3, v0}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lamv;->c:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, p0, Lamv;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
