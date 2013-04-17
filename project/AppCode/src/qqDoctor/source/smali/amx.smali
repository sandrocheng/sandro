.class final Lamx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lams;


# direct methods
.method constructor <init>(Lams;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lamx;->c:Lams;

    iput-object p2, p0, Lamx;->a:Ljava/util/List;

    iput-object p3, p0, Lamx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->j(Lams;)I

    move-result v0

    if-eq v0, v10, :cond_0

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->j(Lams;)I

    move-result v0

    if-ne v0, v9, :cond_1

    :cond_0
    iget-object v0, p0, Lamx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->k(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->l(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->j(Lams;)I

    move-result v0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->j(Lams;)I

    move-result v0

    if-ne v0, v8, :cond_3

    :cond_2
    iget-object v0, p0, Lamx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->m(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->h(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->n(Lams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lle;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->o(Lams;)Lho;

    move-result-object v4

    invoke-virtual {v4}, Lho;->aH()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->j(Lams;)I

    move-result v4

    if-ne v4, v9, :cond_5

    iget-object v4, p0, Lamx;->c:Lams;

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-static {v4, v3, v1, v5}, Lams;->a(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->o(Lams;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aI()V

    const/16 v1, 0x66d0

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->v(Lams;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->w(Lams;)Ljm;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljm;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v6

    :goto_3
    if-ge v4, v5, :cond_a

    new-instance v8, Lmk;

    invoke-direct {v8}, Lmk;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh;

    iget-object v1, v1, Lmh;->e:Ljava/lang/String;

    iput-object v1, v8, Lmk;->body:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->o(Lams;)Lho;

    move-result-object v4

    invoke-virtual {v4}, Lho;->aH()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->j(Lams;)I

    move-result v4

    if-ne v4, v9, :cond_6

    iget-object v4, p0, Lamx;->c:Lams;

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-static {v4, v3, v1}, Lams;->a(Lams;Ljava/util/List;Ljava/util/List;)V

    const/16 v1, 0x66d0

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->j(Lams;)I

    move-result v4

    if-ne v4, v10, :cond_7

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1, v3}, Lams;->a(Lams;Ljava/util/List;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->p(Lams;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lamx;->c:Lams;

    invoke-static {v5}, Lams;->q(Lams;)Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0b0544

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lamx;->c:Lams;

    invoke-static {v5}, Lams;->r(Lams;)Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0b054a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->o(Lams;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aK()V

    const/16 v1, 0x66d1

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->o(Lams;)Lho;

    move-result-object v4

    invoke-virtual {v4}, Lho;->aJ()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->j(Lams;)I

    move-result v4

    if-ne v4, v8, :cond_8

    iget-object v4, p0, Lamx;->c:Lams;

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-static {v4, v7, v1, v5}, Lams;->b(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->o(Lams;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aK()V

    const/16 v1, 0x66d7

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->o(Lams;)Lho;

    move-result-object v4

    invoke-virtual {v4}, Lho;->aJ()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lamx;->c:Lams;

    invoke-static {v4}, Lams;->j(Lams;)I

    move-result v4

    if-ne v4, v8, :cond_9

    iget-object v4, p0, Lamx;->c:Lams;

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-static {v4, v7, v1}, Lams;->b(Lams;Ljava/util/List;Ljava/util/List;)V

    const/16 v1, 0x66d7

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->j(Lams;)I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1, v7}, Lams;->b(Lams;Ljava/util/List;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->s(Lams;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lamx;->c:Lams;

    invoke-static {v5}, Lams;->t(Lams;)Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0b0544

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lamx;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lamx;->c:Lams;

    invoke-static {v5}, Lams;->u(Lams;)Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0b054a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lamx;->c:Lams;

    invoke-static {v1}, Lams;->o(Lams;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aK()V

    const/16 v1, 0x66d8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->x(Lams;)Lzs;

    move-result-object v1

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->j(Lams;)I

    move-result v0

    if-eq v0, v9, :cond_c

    move v4, v2

    :goto_4
    new-instance v5, Lamy;

    invoke-direct {v5}, Lamy;-><init>()V

    new-instance v0, Lzy;

    invoke-direct/range {v0 .. v5}, Lzy;-><init>(Lzs;ZLjava/util/List;ZLdv;)V

    invoke-virtual {v0}, Lzy;->start()V

    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->w(Lams;)Ljm;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljm;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    if-ge v6, v3, :cond_d

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmh;

    iget-object v1, v1, Lmh;->f:Ljava/lang/String;

    iput-object v1, v4, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    move v4, v6

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lamx;->c:Lams;

    invoke-static {v0}, Lams;->x(Lams;)Lzs;

    move-result-object v0

    new-instance v1, Lamz;

    invoke-direct {v1}, Lamz;-><init>()V

    new-instance v3, Lzz;

    invoke-direct {v3, v0, v2, v7, v1}, Lzz;-><init>(Lzs;ZLjava/util/List;Ldv;)V

    invoke-virtual {v3}, Lzz;->start()V

    :cond_e
    iget-object v0, p0, Lamx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
