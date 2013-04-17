.class final Lazo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lazj;


# direct methods
.method constructor <init>(Lazj;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lazo;->b:Lazj;

    iput-object p2, p0, Lazo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->i(Lazj;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-wide v1, v3

    move v5, v0

    :goto_0
    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->i(Lazj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->i(Lazj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->i(Lazj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    :goto_1
    add-long v0, v1, v6

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_0

    :cond_0
    move-wide v6, v3

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :cond_2
    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->j(Lazj;)Liu;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Liu;->setUsedForMonth(J)V

    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->k(Lazj;)Lcom/tencent/tmsecure/module/network/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    iget-object v0, p0, Lazo;->b:Lazj;

    invoke-static {v0}, Lazj;->l(Lazj;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lazo;->b:Lazj;

    invoke-static {v1}, Lazj;->m(Lazj;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lazo;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
