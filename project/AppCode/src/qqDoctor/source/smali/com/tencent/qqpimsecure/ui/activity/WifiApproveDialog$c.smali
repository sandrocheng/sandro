.class public Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;
    .locals 2

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3, p1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3, p2}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Z)Z

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->j(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$a;)Z
    .locals 2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
