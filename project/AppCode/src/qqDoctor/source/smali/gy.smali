.class final Lgy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/tencent/tmsecure/module/software/SoftwareManager;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lgy;->a:Ljava/util/List;

    iput-object p2, p0, Lgy;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object p3, p0, Lgy;->c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final netxToDo()V
    .locals 4

    iget-object v0, p0, Lgy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lgy;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v0, p0, Lgy;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lgy;->c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b6

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lgx;->b:Lgx$b;

    if-eqz v0, :cond_1

    sget-object v0, Lgx;->b:Lgx$b;

    iget-object v1, v0, Lgx$b;->a:Laoh;

    iget-object v1, v1, Laoh;->a:Laoa;

    invoke-static {v1}, Laoa;->Z(Laoa;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lgx$b;->a:Laoh;

    iget-object v0, v0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->Z(Laoa;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lgy;->c:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->setBatchNext(Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;)V

    goto :goto_0
.end method
