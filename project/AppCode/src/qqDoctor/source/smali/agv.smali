.class public final Lagv;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;I)V
    .locals 0

    iput-object p1, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iput p2, p0, Lagv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 3

    iget-object v1, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    monitor-enter v1

    :try_start_0
    check-cast p1, Llv;

    iget-object v0, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;

    iget-object v2, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    iget v2, p0, Lagv;->a:I

    iput v2, v0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->b:I

    iget-object v2, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lagv;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
