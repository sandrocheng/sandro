.class public Lcom/avg/toolkit/e/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a/a/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/a/c;

    const-string v1, "nahche"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/avg/toolkit/e/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/avg/toolkit/e/g;->h()Lcom/avg/toolkit/e/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avg/toolkit/e/b;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/avg/toolkit/e/b;->ordinal()I

    move-result v0

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "ficherimtvmbeyote"

    invoke-virtual {p1}, Lcom/avg/toolkit/e/b;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->b(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "rishuy"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/avg/toolkit/e/g;->f()J

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "haimhauserlahatz"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v2, "originalvendorid"

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v2, "originalvendorid"

    invoke-virtual {v1, v2, p1}, Lcom/a/a/a/c;->b(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "haimhauserlahatz"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->b(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/avg/toolkit/e/g;->f()J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "rishuy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "rishuy"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_2

    if-lez v0, :cond_1

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "id"

    const-string v2, "0-0"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/avg/toolkit/e/g;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v5, "taarihsfira"

    invoke-virtual {v4, v5, v2, v3}, Lcom/a/a/a/c;->b(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "taarihsfira"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/a/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Lcom/avg/toolkit/e/b;
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/e/g;->a:Lcom/a/a/a/c;

    const-string v1, "ficherimtvmbeyote"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/avg/toolkit/e/b;->a(I)Lcom/avg/toolkit/e/b;

    move-result-object v0

    return-object v0
.end method
