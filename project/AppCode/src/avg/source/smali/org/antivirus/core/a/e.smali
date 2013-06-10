.class abstract Lorg/antivirus/core/a/e;
.super Lorg/antivirus/core/a/v;


# instance fields
.field final synthetic a:Lorg/antivirus/core/a/c;

.field private b:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lorg/antivirus/core/a/c;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/core/a/e;->a:Lorg/antivirus/core/a/c;

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/a/e;->b:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/antivirus/core/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/core/a/e;-><init>(Lorg/antivirus/core/a/c;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/core/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/m;

    iget-object v5, p0, Lorg/antivirus/core/a/e;->a:Lorg/antivirus/core/a/c;

    iget-object v5, p0, Lorg/antivirus/core/a/e;->i:Lorg/antivirus/core/EngineSettings;

    iget-object v6, p0, Lorg/antivirus/core/a/e;->h:Lorg/antivirus/core/b/a;

    invoke-virtual {p0}, Lorg/antivirus/core/a/e;->e()Lorg/antivirus/core/a/d;

    move-result-object v7

    invoke-virtual {v7}, Lorg/antivirus/core/a/d;->a()I

    move-result v7

    iget-object v8, v0, Lorg/antivirus/core/a/m;->b:Ljava/lang/String;

    invoke-static {p1, v5, v6, v7, v8}, Lorg/antivirus/core/a/c;->a(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;Lorg/antivirus/core/b/a;ILjava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_0

    :goto_1
    return v3

    :cond_0
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget v5, v0, Lorg/antivirus/core/a/m;->a:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/antivirus/core/a/m;->a:I

    iget v0, v0, Lorg/antivirus/core/a/m;->a:I

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antivirus/core/a/e;->e()Lorg/antivirus/core/a/d;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/antivirus/core/a/e;->a(Lorg/antivirus/core/a/d;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lorg/antivirus/core/a/d;Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/antivirus/core/a/d;->b:Lorg/antivirus/core/a/d;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lorg/antivirus/core/a/e;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getReferrerReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_a

    move v0, v1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/a/e;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0, v2}, Lorg/antivirus/core/EngineSettings;->setReferrerReceived(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_2

    :cond_1
    const-string p2, ""

    goto :goto_0

    :cond_2
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v5, v3

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_4

    aget-object v6, v3, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    aget-object v7, v6, v1

    aget-object v6, v6, v2

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "utm_source"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string p2, ""

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utm_medium"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p2, ""

    goto :goto_0

    :cond_6
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utm_campaign"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string p2, ""

    goto :goto_0

    :cond_7
    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utm_term"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v0, "&"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "utm_content"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lorg/antivirus/core/a/m;

    invoke-direct {v0, p2}, Lorg/antivirus/core/a/m;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/core/a/e;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_1
.end method

.method public b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract e()Lorg/antivirus/core/a/d;
.end method
