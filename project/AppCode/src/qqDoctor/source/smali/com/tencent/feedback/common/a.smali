.class public Lcom/tencent/feedback/common/a;
.super Ljava/lang/Object;
.source "Setting.java"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJJIJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x7530

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/feedback/common/a;->d:I

    .line 40
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/feedback/common/a;->a:I

    .line 41
    iput-wide v2, p0, Lcom/tencent/feedback/common/a;->c:J

    .line 42
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/tencent/feedback/common/a;->b:J

    .line 43
    iput-wide v2, p0, Lcom/tencent/feedback/common/a;->e:J

    .line 44
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/tencent/feedback/common/a;->f:J

    .line 45
    return-void
.end method

.method public static a(Ljava/util/LinkedHashMap;J)[Ljava/lang/Long;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v3

    .line 46
    :goto_0
    return-object v0

    .line 24
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v1, v0

    .line 30
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    cmp-long v0, v1, p1

    if-gez v0, :cond_2

    .line 33
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 36
    add-long v10, v1, v8

    cmp-long v0, v10, p1

    if-gtz v0, :cond_4

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-long v0, v1, v8

    :goto_2
    move-wide v1, v0

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 46
    goto :goto_0

    :cond_4
    move-wide v0, v1

    goto :goto_2
.end method
