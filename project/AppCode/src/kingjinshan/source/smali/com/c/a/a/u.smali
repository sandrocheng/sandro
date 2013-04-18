.class public final Lcom/c/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/c/a/a/v;

.field private d:Ljava/util/Calendar;

.field private e:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    .line 22
    iput-object v0, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v5, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    .line 22
    iput-object v5, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-gtz v2, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "API Key \u5b57\u6bb5\u6570\u91cf\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Fingerprint is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v2, p0, Lcom/c/a/a/u;->a:Ljava/lang/String;

    array-length v2, v1

    if-le v2, v3, :cond_4

    aget-object v2, v1, v3

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "uid \u53c2\u6570\u65e0\u6548\u3002"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "uid \u53c2\u6570\u957f\u5ea6\u5fc5\u987b\u5c0f\u4e8e 16\u3002"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/c/a/a/u;->b:Ljava/lang/String;

    :cond_4
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/c/a/a/v;->a(I)Lcom/c/a/a/v;

    move-result-object v2

    iput-object v2, p0, Lcom/c/a/a/u;->c:Lcom/c/a/a/v;

    :cond_5
    array-length v2, v1

    if-le v2, v4, :cond_6

    aget-object v2, v1, v4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iput-object v2, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    :cond_6
    :goto_0
    array-length v2, v1

    if-le v2, v6, :cond_7

    aget-object v2, v1, v6

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iput-object v2, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    :cond_7
    :goto_1
    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "key \u53c2\u6570\u65e0\u6548\u3002"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-object v5, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    goto :goto_0

    :cond_9
    iput-object v5, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 133
    iget-object v0, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    if-nez v1, :cond_1

    const-string v1, ""

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/c/a/a/u;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/c/a/a/u;->c:Lcom/c/a/a/v;

    if-nez v3, :cond_3

    const-string v3, ""

    .line 137
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/c/a/a/u;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/u;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/u;->e:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/c/a/a/u;->b:Ljava/lang/String;

    goto :goto_2

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/c/a/a/u;->c:Lcom/c/a/a/v;

    invoke-virtual {v3}, Lcom/c/a/a/v;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method
