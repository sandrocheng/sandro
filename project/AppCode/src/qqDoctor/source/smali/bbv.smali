.class final Lbbv;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lbbu;


# direct methods
.method constructor <init>(Lbbu;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lbbv;->b:Lbbu;

    iput-object p2, p0, Lbbv;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    const v2, 0x7f0b042e

    if-nez p1, :cond_0

    iget-object v0, p0, Lbbv;->b:Lbbu;

    invoke-static {v0}, Lbbu;->a(Lbbu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbbv;->b:Lbbu;

    invoke-static {v1}, Lbbu;->b(Lbbu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbbv;->b:Lbbu;

    invoke-static {v0}, Lbbu;->g(Lbbu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbbv;->b:Lbbu;

    invoke-static {v1}, Lbbu;->h(Lbbu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lbbv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lbbv;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    iget v3, v0, Lmb;->e:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lmb;->e:I

    iget-object v3, p0, Lbbv;->b:Lbbu;

    invoke-static {v3}, Lbbu;->c(Lbbu;)Lja;

    move-result-object v3

    invoke-virtual {v3, v0}, Lja;->b(Lmb;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbbv;->b:Lbbu;

    invoke-static {v0}, Lbbu;->d(Lbbu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbbv;->b:Lbbu;

    invoke-static {v0}, Lbbu;->e(Lbbu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbbv;->b:Lbbu;

    invoke-static {v1}, Lbbu;->f(Lbbu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0b3c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
