.class final Lrl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lrj;


# direct methods
.method constructor <init>(Lrj;I)V
    .locals 1

    iput-object p1, p0, Lrl;->b:Lrj;

    const/4 v0, 0x0

    iput v0, p0, Lrl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lrl;->b:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lrl;->b:Lrj;

    const-string v0, "sc_"

    invoke-static {v0, v3}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Llf;

    invoke-direct {v1}, Llf;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Llf;->a(Lorg/json/JSONObject;)Llf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v5, p0, Lrl;->b:Lrj;

    invoke-static {v5}, Lrj;->d(Lrj;)Lhq;

    move-result-object v5

    invoke-virtual {v5, v0}, Lhq;->a(Llf;)J

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    iget-object v0, p0, Lrl;->b:Lrj;

    const-string v0, "ss_"

    invoke-static {v0, v3}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, La;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->protocolType:I

    if-ne v0, v6, :cond_5

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lrl;->b:Lrj;

    invoke-static {v3}, Lrj;->c(Lrj;)Ljp;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljp;->a(Ljava/util/List;)Z

    :goto_4
    iget-object v3, p0, Lrl;->b:Lrj;

    invoke-static {v3}, Lrj;->e(Lrj;)Ljava/util/Set;

    move-result-object v3

    iget v4, p0, Lrl;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lrl;->b:Lrj;

    invoke-static {v3}, Lrj;->f(Lrj;)I

    iget-object v3, p0, Lrl;->b:Lrj;

    invoke-static {v3}, Lrj;->a(Lrj;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lyq;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v3, p0, Lrl;->b:Lrj;

    invoke-static {v3}, Lrj;->a(Lrj;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lrl;->b:Lrj;

    invoke-static {v4}, Lrj;->a(Lrj;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b020a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_4
.end method
