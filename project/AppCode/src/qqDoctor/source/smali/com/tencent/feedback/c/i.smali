.class public Lcom/tencent/feedback/c/i;
.super Ljava/lang/Object;
.source "RecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/feedback/c/i;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/tencent/feedback/c/i;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/tencent/feedback/c/i;->a:J

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    .line 72
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/tencent/feedback/c/i;->c:J

    .line 52
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/tencent/feedback/c/i;->c:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    if-eqz p1, :cond_0

    const-class v0, Lcom/tencent/feedback/c/i;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 87
    :cond_1
    const-class v0, Lcom/tencent/feedback/c/i;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/c/i;

    .line 89
    iget-object v1, v0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    :cond_2
    iget-object v1, v0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    iget-object v1, v0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    :cond_3
    iget-wide v3, v0, Lcom/tencent/feedback/c/i;->c:J

    iget-wide v5, p0, Lcom/tencent/feedback/c/i;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    .line 93
    iget-object v3, v0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    .line 94
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 96
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 97
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 101
    goto :goto_0

    .line 103
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/c/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/feedback/c/i;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/c/i;->e:Ljava/util/Map;

    invoke-static {v1}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
