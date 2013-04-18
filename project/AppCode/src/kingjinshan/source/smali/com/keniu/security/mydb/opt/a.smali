.class public final Lcom/keniu/security/mydb/opt/a;
.super Ljava/lang/Object;
.source "DBDAO.java"


# static fields
.field private static a:Lcom/keniu/security/mydb/opt/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/keniu/security/mydb/opt/b;->a()Lcom/keniu/security/mydb/opt/b;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/b;->d()Ljava/util/List;

    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 32
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 33
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->a:I

    if-ne v0, p0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->b:I

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0, v3}, Lcom/keniu/security/mydb/opt/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    monitor-enter v0

    .line 95
    if-nez p0, :cond_0

    const/16 v1, 0x81

    .line 96
    :goto_0
    const/16 v2, 0x2710

    if-le p1, v2, :cond_1

    :try_start_0
    rem-int/lit16 v2, p1, 0x2710

    .line 97
    :goto_1
    sget-object v3, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    sget-object v4, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-static {v1, v2}, Lcom/keniu/security/mydb/opt/b;->a(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/keniu/security/mydb/opt/b;->c(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    move v1, p0

    .line 95
    goto :goto_0

    :cond_1
    move v2, p1

    .line 96
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 90
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    sget-object v1, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-static {p0, p1}, Lcom/keniu/security/mydb/opt/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/mydb/opt/b;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    sget-object v1, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v1, p0}, Lcom/keniu/security/mydb/opt/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 69
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 78
    :cond_0
    return-object v0

    .line 70
    :cond_1
    sget-object v2, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v2}, Lcom/keniu/security/mydb/opt/b;->d()Ljava/util/List;

    move-result-object v2

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 72
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 73
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/d;

    iget v5, p0, Lcom/keniu/security/mydb/opt/d;->c:I

    if-ne v5, v1, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/mydb/opt/d;

    iget v5, p0, Lcom/keniu/security/mydb/opt/d;->b:I

    if-nez v5, :cond_2

    .line 74
    sget-object v5, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Lcom/keniu/security/mydb/opt/b;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string v6, "unkown_str"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 112
    sget-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-static {p0}, Lcom/keniu/security/mydb/opt/a;->d(Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-static {p1}, Lcom/keniu/security/mydb/opt/a;->d(Ljava/lang/String;)I

    move-result v2

    .line 115
    if-eq v1, v3, :cond_0

    if-ne v2, v3, :cond_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 116
    :goto_0
    return v0

    :cond_1
    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(J)I
    .locals 2
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    sget-object v1, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-static {p0, p1}, Lcom/keniu/security/mydb/opt/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/mydb/opt/b;->d(I)I

    move-result v0

    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/b;->d()Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 43
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->a:I

    if-ne v0, p0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/mydb/opt/d;

    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->b:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 45
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0, v3}, Lcom/keniu/security/mydb/opt/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_1
    return-object v0

    .line 43
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b()Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-static {p0}, Lcom/keniu/security/mydb/opt/a;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/keniu/security/mydb/opt/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v1

    .line 86
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    sget-object v2, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v2, p0}, Lcom/keniu/security/mydb/opt/b;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/mydb/opt/b;->c(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static d(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 17
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v0}, Lcom/keniu/security/mydb/opt/b;->b()Ljava/util/List;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    move v0, v4

    .line 26
    :goto_0
    return v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_2
    sget-object v0, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    sget-object v2, Lcom/keniu/security/mydb/opt/a;->a:Lcom/keniu/security/mydb/opt/b;

    invoke-virtual {v2, v1}, Lcom/keniu/security/mydb/opt/b;->b(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/mydb/opt/b;->b(I)Lcom/keniu/security/mydb/opt/d;

    move-result-object v0

    .line 25
    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    .line 26
    :cond_3
    iget v0, v0, Lcom/keniu/security/mydb/opt/d;->a:I

    goto :goto_0
.end method
