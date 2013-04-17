.class public final Lbsp;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lbsp;->b:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    iput-object p2, p0, Lbsp;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-class v1, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lzk;

    iget-object v2, p0, Lbsp;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v2

    invoke-virtual {v2}, Lzo;->e()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lzk;->a(Z)Lzk$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    iget-object v2, p0, Lbsp;->b:Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;->a(Ljava/lang/String;)V

    iget-boolean v2, v0, Lzk$a;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsp;->a:Landroid/content/Context;

    const v3, 0x7f0b093a

    invoke-static {v2, v3}, Lha;->a(Landroid/content/Context;I)V

    :cond_0
    iget-wide v2, v0, Lzk$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lbsp;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b054b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lzk$a;->c:J

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
