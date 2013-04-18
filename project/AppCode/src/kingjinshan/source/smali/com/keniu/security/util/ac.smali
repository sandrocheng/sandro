.class public final Lcom/keniu/security/util/ac;
.super Ljava/lang/Object;
.source "GlobalParamsUtil.java"


# static fields
.field public static b:Lcom/keniu/security/util/ac;


# instance fields
.field public a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/util/ac;->b:Lcom/keniu/security/util/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/util/ac;->a:Ljava/util/HashMap;

    .line 13
    return-void
.end method

.method public static declared-synchronized a()Lcom/keniu/security/util/ac;
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/keniu/security/util/ac;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/util/ac;->b:Lcom/keniu/security/util/ac;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/keniu/security/util/ac;

    invoke-direct {v1}, Lcom/keniu/security/util/ac;-><init>()V

    sput-object v1, Lcom/keniu/security/util/ac;->b:Lcom/keniu/security/util/ac;

    .line 19
    :cond_0
    sget-object v1, Lcom/keniu/security/util/ac;->b:Lcom/keniu/security/util/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    const/4 v0, 0x0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/util/ac;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/keniu/security/util/ac;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 23
    monitor-enter p0

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/keniu/security/util/ac;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/keniu/security/util/ac;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
