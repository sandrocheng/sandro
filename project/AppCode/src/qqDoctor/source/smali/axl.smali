.class final Laxl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxl;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v0, 0x7f080087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Laxl;->a:Laxj;

    invoke-static {v2}, Laxj;->b(Laxj;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkw;->N()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lkw;->N()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laxl;->a:Laxj;

    invoke-static {v0}, Laxj;->F(Laxj;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1}, Lkw;->N()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Laxl;->a:Laxj;

    invoke-static {v1}, Laxj;->G(Laxj;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-static {v0, v3, v1}, Lds;->a(Landroid/app/Activity;Ljava/lang/String;I)I

    :goto_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_3
    return-void

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laxl;->a:Laxj;

    invoke-static {v0}, Laxj;->H(Laxj;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Laxl;->a:Laxj;

    invoke-static {v1}, Laxj;->a(Lkw;)I

    move-result v3

    invoke-static {v0, v1, v3, v2}, Lkw;->a(Landroid/content/Context;Lkw;II)V

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x6629

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_3

    :pswitch_1
    const/16 v1, 0x662a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_3

    :pswitch_2
    const/16 v1, 0x662b

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
