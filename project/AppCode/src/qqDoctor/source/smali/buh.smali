.class final Lbuh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbuh$a;
    }
.end annotation


# instance fields
.field a:[I

.field b:[Lbuh$a;

.field private c:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbuh;->c:Ljava/lang/Object;

    return-void
.end method

.method private varargs a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lbuh;->b:[Lbuh$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lbuh;->b:[Lbuh$a;

    monitor-enter v2

    :try_start_0
    iput-object p3, v1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    iput p2, v1, Lbuh$a;->b:I

    iput-object p4, v1, Lbuh$a;->d:[Ljava/lang/Object;

    iget-object v0, p0, Lbuh;->a:[I

    aget v0, v0, p1

    iput v0, v1, Lbuh$a;->e:I

    invoke-virtual {v1}, Lbuh$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lbuh$a;->b()V

    :cond_0
    iget-object v0, v1, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    const/4 v3, 0x0

    iput-object v3, v1, Lbuh$a;->f:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, Lbuh$a;->a:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

    const/4 v3, 0x0

    iput-object v3, v1, Lbuh$a;->c:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    const/4 v3, 0x0

    iput-object v3, v1, Lbuh$a;->d:[Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final varargs a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterConfig;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lbuh;->a:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbuh;->b:[Lbuh$a;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lbuh;->c:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lbuh;->a:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    :cond_0
    monitor-exit v2

    :cond_1
    return-object v0

    :cond_2
    iget-object v3, p0, Lbuh;->a:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->get(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    invoke-direct {p0, v1, v3, p1, p3}, Lbuh;->a(IILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_3
    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(ILbuh$a;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lbuh;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :cond_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lbuh;->b:[Lbuh$a;

    aput-object p2, v1, v0

    return-void

    :cond_1
    iget-object v2, p0, Lbuh;->a:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the filed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not define from setOrderedFileds method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
