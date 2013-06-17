.class public Lcom/antivirus/ui/callmessagefilter/c;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/a;


# direct methods
.method protected constructor <init>(Lcom/antivirus/ui/callmessagefilter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v2, v0, Lcom/antivirus/ui/callmessagefilter/a;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v4, v4, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v2, v0, Lcom/antivirus/ui/callmessagefilter/a;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v3, v3, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v2, v0, Lcom/antivirus/ui/callmessagefilter/a;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v3, v3, Lcom/antivirus/ui/callmessagefilter/a;->b:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/antivirus/ui/callmessagefilter/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/d;->d()Lcom/antivirus/ui/callmessagefilter/x;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_4
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/antivirus/ui/callmessagefilter/a;->a:Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/c;->a:Lcom/antivirus/ui/callmessagefilter/a;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
