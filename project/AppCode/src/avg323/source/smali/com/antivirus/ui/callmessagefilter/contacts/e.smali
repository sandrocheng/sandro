.class public Lcom/antivirus/ui/callmessagefilter/contacts/e;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/contacts/b;


# direct methods
.method protected constructor <init>(Lcom/antivirus/ui/callmessagefilter/contacts/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->i(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->j(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v4}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->k(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->c(Lcom/antivirus/ui/callmessagefilter/contacts/b;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->l(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v3}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->m(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/util/List;

    move-result-object v3

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

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->n(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->o(Lcom/antivirus/ui/callmessagefilter/contacts/b;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/contacts/g;

    array-length v5, v2

    if-ne v5, v8, :cond_5

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v5}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->h(Lcom/antivirus/ui/callmessagefilter/contacts/b;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->i()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->i()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->f()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_6
    iget-object v5, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-static {v5}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->h(Lcom/antivirus/ui/callmessagefilter/contacts/b;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->i()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/b/d;->c:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->d:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->e:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->j()Lcom/antivirus/ui/callmessagefilter/a/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/a/d;->c:Lcom/antivirus/ui/callmessagefilter/a/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/g;->i()Lcom/antivirus/ui/callmessagefilter/b/d;

    move-result-object v5

    sget-object v6, Lcom/antivirus/ui/callmessagefilter/b/d;->e:Lcom/antivirus/ui/callmessagefilter/b/d;

    invoke-virtual {v5, v6}, Lcom/antivirus/ui/callmessagefilter/b/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    iput-object v4, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->d(Lcom/antivirus/ui/callmessagefilter/contacts/b;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/e;->a:Lcom/antivirus/ui/callmessagefilter/contacts/b;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/b;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
