.class public final Lcu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tccsync/ITccSyncDbAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field private c:Lcb;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lch;

.field private g:[Ljava/lang/String;

.field private h:Z

.field private i:Lcom/tencent/tccsync/RemoteSync$SyncType;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcu;->a:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcu;->c:Lcb;

    iput-object v1, p0, Lcu;->d:Ljava/util/List;

    iput v2, p0, Lcu;->e:I

    iput-object v1, p0, Lcu;->f:Lch;

    iput-object v1, p0, Lcu;->g:[Ljava/lang/String;

    iput-boolean v2, p0, Lcu;->h:Z

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object p1, p0, Lcu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object p4, p0, Lcu;->c:Lcb;

    iput-object p3, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;[Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcu;->a:Landroid/content/Context;

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v0, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object v1, p0, Lcu;->c:Lcb;

    iput-object v1, p0, Lcu;->d:Ljava/util/List;

    iput v2, p0, Lcu;->e:I

    iput-object v1, p0, Lcu;->f:Lch;

    iput-object v1, p0, Lcu;->g:[Ljava/lang/String;

    iput-boolean v2, p0, Lcu;->h:Z

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object p1, p0, Lcu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    iput-object p5, p0, Lcu;->g:[Ljava/lang/String;

    iput-object p4, p0, Lcu;->c:Lcb;

    iput-boolean p6, p0, Lcu;->h:Z

    iput-object p3, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcu;

    invoke-direct {v0, p0, p1, p2, p3}, Lcu;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;[Ljava/lang/String;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;
    .locals 7

    const-string v0, "TccSyncDb"

    const-string v1, "getITccSyncDbAdapter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcu;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcu;-><init>(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;[Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/util/ArrayList;Ljava/util/ArrayList;[I[I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Ljava/util/ArrayList",
            "<[B>;[I[I)I"
        }
    .end annotation

    const/16 v1, -0x64

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v3, "add"

    invoke-static {v0, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v3, "add enter"

    invoke-static {v0, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v2

    :goto_1
    if-lt v4, v7, :cond_1

    :try_start_0
    iget-object v0, p0, Lcu;->c:Lcb;

    invoke-interface {v0, v6, v5, p4}, Lcb;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;[I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sget-object v3, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v3}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v3

    aput v3, p4, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcu;->f:Lch;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v8, v0}, Lch;->a([B)Lcc;

    move-result-object v3

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "TccSyncDb"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "add(), "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "TccSyncDb"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v2

    move v0, v1

    goto/16 :goto_0

    :cond_2
    new-array v3, v2, [B

    move v1, v2

    :goto_3
    if-lt v1, v7, :cond_3

    move v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v1

    const/4 v0, 0x0

    aput v0, p3, v1

    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v6, "TccSyncDb"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "add result idAdded="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcu;->c:Lcb;

    invoke-interface {v6, v0}, Lcb;->c(Ljava/lang/String;)Lcc;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p4, v1

    const/4 v0, 0x0

    aput v0, p3, v1

    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    sget-object v4, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v4

    aput v4, p4, v1

    aput v2, p3, v1

    invoke-virtual {p2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v4, "TccSyncDb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "add(), "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcc;->c()I

    move-result v0

    aput v0, p3, v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {p2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    sget-object v4, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    invoke-virtual {v4}, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->toInt()I

    move-result v4

    aput v4, p4, v1

    aput v2, p3, v1

    const-string v4, "TccSyncDb"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "add(), "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public final add([BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;"
        }
    .end annotation

    const-string v0, "TccSyncDb"

    const-string v1, "add one"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "add enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcu;->f:Lch;

    invoke-interface {v0, p1}, Lch;->a([B)Lcc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcu;->c:Lcb;

    invoke-interface {v1, v0}, Lcb;->a(Lcc;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 1"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcu;->c:Lcb;

    invoke-interface {v1, v0}, Lcb;->c(Ljava/lang/String;)Lcc;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 2"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add query and entity.getCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {v0}, Lcc;->c()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "add OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add OperationReturnValue.TCC_ERR 4, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "TccSyncDb"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0
.end method

.method public final del([B)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "del"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "del enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcu;->c:Lcb;

    invoke-interface {v1, v0}, Lcb;->a(Ljava/lang/String;)Lcb$a;

    move-result-object v0

    sget-object v1, Lcb$a;->a:Lcb$a;

    if-ne v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    sget-object v1, Lcb$a;->c:Lcb$a;

    if-ne v0, v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_3
    const-string v0, "TccSyncDb"

    const-string v1, "del OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0
.end method

.method public final getCurrObject(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;"
        }
    .end annotation

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject  GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcu;->e:I

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    iget v1, p0, Lcu;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcu;->c:Lcb;

    invoke-interface {v1, v0}, Lcb;->c(Ljava/lang/String;)Lcc;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 3 strContactId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcu;->f:Lch;

    invoke-interface {v2, v1}, Lch;->a(Lcc;)[B

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 4"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcc;->c()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObject GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0
.end method

.method public final getCurrObjectInfo(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;"
        }
    .end annotation

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 1"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcu;->e:I

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_EOF"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR_EOF:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    iget v1, p0, Lcu;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcu;->c:Lcb;

    invoke-interface {v1, v0}, Lcb;->c(Ljava/lang/String;)Lcc;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 2"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcc;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "TccSyncDb"

    const-string v1, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_RRR_NONE"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_RRR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 3, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 4, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$GetCurrObjectReturnValue;

    goto/16 :goto_0
.end method

.method public final getSyncDataType()Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "getSyncDataType"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    return-object v0
.end method

.method public final getSyncType()Lcom/tencent/tccsync/RemoteSync$SyncType;
    .locals 1

    iget-object v0, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-object v0
.end method

.method public final hasEnoughStorageSpace(J)Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "hasEnoughStorageSpace"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final isAtEnd()Z
    .locals 2

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcu;->e:I

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd  true"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "isAtEnd false"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isExist([B)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "isExist false"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExist "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcu;->c:Lcb;

    invoke-interface {v0, v1}, Lcb;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TccSyncDb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "oidInputError, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final mdf([B[BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;
    .locals 4

    const-string v0, "TccSyncDb"

    const-string v1, "mdf"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lde;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TccSyncDb"

    const-string v1, "mdf enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcu;->f:Lch;

    invoke-interface {v0, p1}, Lch;->a([B)Lcc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "TccSyncDb"

    const-string v1, "mdf entity == null"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TccSyncDb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mdf OperationReturnValue.TCC_ERR_DATA_INVALID, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcu;->c:Lcb;

    invoke-interface {v2, v0}, Lcb;->b(Lcc;)Lcb$a;

    move-result-object v0

    sget-object v2, Lcb$a;->a:Lcb$a;

    if-ne v0, v2, :cond_4

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_NOT_FOUND"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_NOT_FOUND:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_4
    sget-object v2, Lcb$a;->c:Lcb$a;

    if-ne v0, v2, :cond_5

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcu;->c:Lcb;

    invoke-interface {v0, v1}, Lcb;->c(Ljava/lang/String;)Lcc;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_DATA_COMMAND_FAILED:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcc;->c()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "mdf OperationReturnValue.TCC_ERR_NONE"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;->TCC_ERR_NONE:Lcom/tencent/tccsync/ITccSyncDbAdapter$OperationReturnValue;

    goto/16 :goto_0
.end method

.method public final seekFirst(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v1, "TccSyncDb"

    const-string v2, "seekFirst  false"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcu;->e:I

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "TccSyncDb"

    const-string v1, "seekFirst  true"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final seekNext()Z
    .locals 2

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcu;->e:I

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcu;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcu;->e:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setSyncType(Lcom/tencent/tccsync/RemoteSync$SyncType;)V
    .locals 0

    iput-object p1, p0, Lcu;->i:Lcom/tencent/tccsync/RemoteSync$SyncType;

    return-void
.end method

.method public final size()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "size  enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "TccSyncDb"

    const-string v2, "size  false"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcu;->e:I

    iget-object v0, p0, Lcu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "TccSyncDb"

    const-string v2, "size  true"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final syncFreeze()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  enter"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcu;->c:Lcb;

    iput-object v2, p0, Lcu;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcu;->e:I

    iput-object v2, p0, Lcu;->f:Lch;

    iput-object v2, p0, Lcu;->g:[Ljava/lang/String;

    const-string v0, "TccSyncDb"

    const-string v1, "syncFreeze  true"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final syncInit()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "TccSyncDb"

    const-string v2, "syncInit enter"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcu;->a:Landroid/content/Context;

    invoke-static {v1}, Lbn;->a(Landroid/content/Context;)Lcb;

    move-result-object v1

    iput-object v1, p0, Lcu;->c:Lcb;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcu;->c:Lcb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcu;->c:Lcb;

    iget-object v2, p0, Lcu;->g:[Ljava/lang/String;

    iget-boolean v3, p0, Lcu;->h:Z

    invoke-interface {v1, v2, v3}, Lcb;->a([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcu;->d:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcu;->d:Ljava/util/List;

    if-nez v1, :cond_4

    const-string v1, "TccSyncDb"

    const-string v2, "syncInit false"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_2
    iget-object v1, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcu;->a:Landroid/content/Context;

    invoke-static {v1}, Lbt;->a(Landroid/content/Context;)Lcb;

    move-result-object v1

    iput-object v1, p0, Lcu;->c:Lcb;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcu;->b:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->QQBROWSER_BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1, v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->isEqual(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Z

    goto :goto_0

    :cond_4
    new-instance v1, Lby;

    invoke-direct {v1}, Lby;-><init>()V

    iput-object v1, p0, Lcu;->f:Lch;

    iput v0, p0, Lcu;->e:I

    const-string v0, "TccSyncDb"

    const-string v1, "syncInit  true"

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method
