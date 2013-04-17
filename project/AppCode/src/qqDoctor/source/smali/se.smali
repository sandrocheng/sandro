.class public Lse;
.super Lcom/tencent/tmsecure/common/BaseService;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lho;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lse;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lse;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method

.method static synthetic a(Lse;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lse;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()V
    .locals 2

    sget-object v1, Lse;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lse;->b:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;Landroid/os/Messenger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Messenger;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lse;->b(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse;->c:Landroid/content/Context;

    iget-object v1, p0, Lse;->c:Landroid/content/Context;

    const v2, 0x7f0b0a20

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v1, p2}, Lse;->b(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsg;

    invoke-direct {v2, p0, p1, p2, v0}, Lsg;-><init>(Lse;Ljava/util/ArrayList;Landroid/os/Messenger;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Message;Landroid/os/Messenger;)Z
    .locals 1

    invoke-static {p0, p1}, Lse;->b(Landroid/os/Message;Landroid/os/Messenger;)Z

    move-result v0

    return v0
.end method

.method private static b()I
    .locals 2

    sget-object v1, Lse;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lse;->b:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(I)I
    .locals 2

    sget-object v1, Lse;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lse;->b:I

    if-eqz v0, :cond_0

    sget v0, Lse;->b:I

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sput p0, Lse;->b:I

    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/ArrayList;Landroid/os/Messenger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llj;",
            ">;",
            "Landroid/os/Messenger;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lse;->b(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lse;->c:Landroid/content/Context;

    iget-object v1, p0, Lse;->c:Landroid/content/Context;

    const v2, 0x7f0b0a20

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-static {v1, p2}, Lse;->b(Landroid/os/Message;Landroid/os/Messenger;)Z

    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsh;

    invoke-direct {v2, p0, p1, p2, v0}, Lsh;-><init>(Lse;Ljava/util/ArrayList;Landroid/os/Messenger;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Landroid/os/Message;Landroid/os/Messenger;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Lse;->c:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lse;->d:Lho;

    return-void
.end method

.method public onDestory()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "extra_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_action_filesafe_init"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lse;->d:Lho;

    invoke-virtual {v0}, Lho;->dG()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lse;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsf;

    invoke-direct {v1, p0}, Lsf;-><init>(Lse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v1, "extra_action_filesafeservice_get_state"

    if-ne v0, v1, :cond_3

    const-string v0, "extra_messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lse;->b()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0}, Lse;->b(Landroid/os/Message;Landroid/os/Messenger;)Z

    goto :goto_0

    :cond_3
    const-string v1, "extra_action_encry"

    if-ne v0, v1, :cond_4

    const-string v0, "extra_file_path_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v0, "extra_messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-direct {p0, v1, v0}, Lse;->a(Ljava/util/ArrayList;Landroid/os/Messenger;)V

    goto :goto_0

    :cond_4
    const-string v1, "extra_action_decry"

    if-ne v0, v1, :cond_0

    const-string v0, "extra_file_fileCryptInfo_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "extra_messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    invoke-direct {p0, v0, v1}, Lse;->b(Ljava/util/ArrayList;Landroid/os/Messenger;)V

    goto :goto_0
.end method
