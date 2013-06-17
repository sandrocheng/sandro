.class public Lcom/google/c/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/google/c/a/q;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/c/a/p;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/c/a/p;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/p;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/c/a/p;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/p;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/p;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/c/a/q;->a:Lcom/google/c/a/q;

    iput-object v0, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/c/a/p;->b:I

    return v0
.end method

.method public a(I)Lcom/google/c/a/p;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->a:Z

    iput p1, p0, Lcom/google/c/a/p;->b:I

    return-object p0
.end method

.method public a(J)Lcom/google/c/a/p;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->c:Z

    iput-wide p1, p0, Lcom/google/c/a/p;->d:J

    return-object p0
.end method

.method public a(Lcom/google/c/a/q;)Lcom/google/c/a/p;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->k:Z

    iput-object p1, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/c/a/p;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->e:Z

    iput-object p1, p0, Lcom/google/c/a/p;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/c/a/p;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->g:Z

    iput-boolean p1, p0, Lcom/google/c/a/p;->h:Z

    return-object p0
.end method

.method public a(Lcom/google/c/a/p;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    iget v2, p0, Lcom/google/c/a/p;->b:I

    iget v3, p1, Lcom/google/c/a/p;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/c/a/p;->d:J

    iget-wide v4, p1, Lcom/google/c/a/p;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/c/a/p;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/p;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/c/a/p;->h:Z

    iget-boolean v3, p1, Lcom/google/c/a/p;->h:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/c/a/p;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/p;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    iget-object v3, p1, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/c/a/p;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/p;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/c/a/p;->l()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/c/a/p;->l()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/c/a/p;->d:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/c/a/p;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->i:Z

    iput-object p1, p0, Lcom/google/c/a/p;->j:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/c/a/p;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/p;->m:Z

    iput-object p1, p0, Lcom/google/c/a/p;->n:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->e:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->g:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/c/a/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/a/p;

    invoke-virtual {p0, p1}, Lcom/google/c/a/p;->a(Lcom/google/c/a/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->i:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/p;->j:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    invoke-virtual {p0}, Lcom/google/c/a/p;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x87d

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->j()Lcom/google/c/a/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/c/a/q;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/c/a/p;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->k:Z

    return v0
.end method

.method public j()Lcom/google/c/a/q;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    return-object v0
.end method

.method public k()Lcom/google/c/a/p;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/p;->k:Z

    sget-object v0, Lcom/google/c/a/q;->a:Lcom/google/c/a/q;

    iput-object v0, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    return-object p0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/p;->m:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/p;->n:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/c/a/p;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/c/a/p;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/c/a/p;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/a/p;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/google/c/a/p;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/p;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/google/c/a/p;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/p;->l:Lcom/google/c/a/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/google/c/a/p;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/p;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
