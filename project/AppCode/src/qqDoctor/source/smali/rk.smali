.class final Lrk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lrj;


# direct methods
.method constructor <init>(Lrj;I)V
    .locals 1

    iput-object p1, p0, Lrk;->b:Lrj;

    const/4 v0, 0x0

    iput v0, p0, Lrk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->a(Lrj;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->ap()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->c(Lrj;)Ljp;

    move-result-object v0

    invoke-virtual {v0}, Ljp;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->protocolType:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lrk;->b:Lrj;

    const-string v0, "ss_"

    invoke-static {v0, v2}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, La;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lho;->c(J)V

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lho;->e(J)V

    :cond_3
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->aq()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->d(Lrj;)Lhq;

    move-result-object v0

    invoke-virtual {v0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lrk;->b:Lrj;

    const-string v1, "sc_"

    invoke-static {v1, v2}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, La;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lho;->d(J)V

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->b(Lrj;)Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->f(J)V

    :cond_4
    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->e(Lrj;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lrk;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lrk;->b:Lrj;

    invoke-static {v0}, Lrj;->f(Lrj;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lrk;->b:Lrj;

    const-string v0, "ss_"

    invoke-static {v0, v2}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->d(Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lrk;->b:Lrj;

    const-string v0, "sc_"

    invoke-static {v0, v2}, Lrj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->d(Ljava/lang/String;)Z

    goto :goto_3
.end method
