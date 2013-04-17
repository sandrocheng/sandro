.class final Laog;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laog;->a:Laoa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x3ea

    const/4 v4, 0x1

    const/16 v7, 0x3ee

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->U(Laoa;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    const/16 v1, 0xbbe

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->l()V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0, v6}, Laoa;->a(Laoa;Ljava/lang/String;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->T(Laoa;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v1, 0x7db

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0, v6}, Laoa;->a(Laoa;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    iget-object v1, v0, Llc;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->l()V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0, v6}, Laoa;->a(Laoa;Ljava/lang/String;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->T(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->U(Laoa;)V

    goto/16 :goto_1

    :pswitch_4
    const/16 v1, 0xfa8

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    const/16 v1, 0x7d9

    iput v1, v0, Llc;->b:I

    goto :goto_2

    :pswitch_6
    const/16 v1, 0xbc0

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    const/16 v1, 0x7da

    iput v1, v0, Llc;->b:I

    goto :goto_2

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    move v2, v3

    :goto_3
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->b:I

    const/16 v5, 0x7d4

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    move v2, v3

    :goto_4
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->b:I

    if-ne v1, v7, :cond_6

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    iput v8, v0, Llc;->b:I

    move v2, v3

    :goto_5
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_e

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->b:I

    if-ne v1, v8, :cond_7

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-nez v4, :cond_4

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_7
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->l()V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0, v6}, Laoa;->a(Laoa;Ljava/lang/String;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->T(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->U(Laoa;)V

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_8
    const/16 v1, 0xfa9

    iput v1, v0, Llc;->b:I

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    move v2, v3

    :goto_8
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_9

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->b:I

    const/16 v5, 0x7d4

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    iput v7, v0, Llc;->b:I

    move v2, v3

    :goto_9
    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    iget v1, v1, Llc;->b:I

    if-ne v1, v7, :cond_d

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    :cond_a
    if-nez v3, :cond_b

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1}, Laoa;->R(Laoa;)Lum;

    move-result-object v1

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->l()V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0, v6}, Laoa;->a(Laoa;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_9

    :pswitch_a
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->V(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->U(Laoa;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Laog;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)V

    iget-object v0, p0, Laog;->a:Laoa;

    invoke-static {v0}, Laoa;->i(Laoa;)V

    goto/16 :goto_1

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
