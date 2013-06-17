.class final Lcom/google/b/a/a/s;
.super Lcom/google/b/j;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/b/b/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/s;->b(Lcom/google/b/b/a;)Lcom/google/b/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/b/b/f;Lcom/google/b/b;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/b/b/f;->e()Lcom/google/b/b/f;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/b/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/b/b;->l()Lcom/google/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/h;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/b/h;->b()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/b/b/f;->a(Ljava/lang/Number;)Lcom/google/b/b/f;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/b/h;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/b/h;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/b/b/f;->b(Z)Lcom/google/b/b/f;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/b/b/f;->b(Ljava/lang/String;)Lcom/google/b/b/f;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/b/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/b/b/f;->a()Lcom/google/b/b/f;

    invoke-virtual {p2}, Lcom/google/b/b;->k()Lcom/google/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b;

    invoke-virtual {p0, p1, v0}, Lcom/google/b/a/a/s;->a(Lcom/google/b/b/f;Lcom/google/b/b;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/b/b/f;->b()Lcom/google/b/b/f;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/google/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/b/b/f;->c()Lcom/google/b/b/f;

    invoke-virtual {p2}, Lcom/google/b/b;->j()Lcom/google/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/e;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/b/b/f;->a(Ljava/lang/String;)Lcom/google/b/b/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b;

    invoke-virtual {p0, p1, v0}, Lcom/google/b/a/a/s;->a(Lcom/google/b/b/f;Lcom/google/b/b;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/b/b/f;->d()Lcom/google/b/b/f;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/google/b/b/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/google/b/a/a/s;->a(Lcom/google/b/b/f;Lcom/google/b/b;)V

    return-void
.end method

.method public b(Lcom/google/b/b/a;)Lcom/google/b/b;
    .locals 3

    sget-object v0, Lcom/google/b/a/a/z;->a:[I

    invoke-virtual {p1}, Lcom/google/b/b/a;->g()Lcom/google/b/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/b/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/b/h;

    invoke-virtual {p1}, Lcom/google/b/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/h;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/b/b/a;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/b/h;

    new-instance v2, Lcom/google/b/a/c;

    invoke-direct {v2, v1}, Lcom/google/b/a/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/b/h;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/b/h;

    invoke-virtual {p1}, Lcom/google/b/b/a;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/h;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/b/b/a;->k()V

    sget-object v0, Lcom/google/b/d;->a:Lcom/google/b/d;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/google/b/a;

    invoke-direct {v0}, Lcom/google/b/a;-><init>()V

    invoke-virtual {p1}, Lcom/google/b/b/a;->b()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/b/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/s;->b(Lcom/google/b/b/a;)Lcom/google/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/a;->a(Lcom/google/b/b;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/b/b/a;->c()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/b/e;

    invoke-direct {v0}, Lcom/google/b/e;-><init>()V

    invoke-virtual {p1}, Lcom/google/b/b/a;->d()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/b/b/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/b/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/b/a/a/s;->b(Lcom/google/b/b/a;)Lcom/google/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/b/e;->a(Ljava/lang/String;Lcom/google/b/b;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/b/b/a;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
