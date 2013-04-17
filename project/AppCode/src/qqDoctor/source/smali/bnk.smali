.class final Lbnk;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    iput-object p1, p0, Lbnk;->a:Lbnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Llv;

    iget-object v1, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lbnk;->a:Lbnd;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lbnk;->a:Lbnd;

    invoke-static {v1}, Lbnd;->t(Lbnd;)LQQPIM/AnalyseInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/AnalyseInfo;->getSoftInfo()LQQPIM/SoftInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/SoftInfo;->getPicurls()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v5, p1, Lmp;->g:I

    if-ne v1, v5, :cond_3

    sget-object v1, Lbnd;->a:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lbnd;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    sget-object v4, Lbnd;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v4, Lbnd;->a:Ljava/util/List;

    iget-object v0, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-interface {v4, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lbnk;->a:Lbnd;

    invoke-static {v0}, Lbnd;->v(Lbnd;)Lals;

    move-result-object v0

    invoke-virtual {v0}, Lals;->notifyDataSetChanged()V

    sget-object v0, Lbnd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    monitor-exit v3

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
