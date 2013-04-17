.class final Lbnb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lbmp;


# direct methods
.method constructor <init>(Lbmp;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbnb;->e:Lbmp;

    iput-object p2, p0, Lbnb;->a:Ljava/util/List;

    iput-object p3, p0, Lbnb;->b:Ljava/util/List;

    iput-object p4, p0, Lbnb;->c:Ljava/util/List;

    iput-object p5, p0, Lbnb;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6679

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->O(Lbmp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->startRunning()V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lbnb;->e:Lbmp;

    iget-object v2, p0, Lbnb;->a:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lgx;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/tmsecure/module/software/SoftwareManager;Ljava/util/List;)V

    iget-object v0, p0, Lbnb;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-virtual {v0}, Lbmp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Lbnb;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lfy;->a(Landroid/app/Activity;Ljava/util/List;)Z

    :cond_0
    iget-object v0, p0, Lbnb;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lkw;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->T(Lbmp;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->O(Lbmp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->stopRunning()V

    iget-object v0, p0, Lbnb;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65e0

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->P(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->Q(Lbmp;)Z

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->R(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnb;->e:Lbmp;

    invoke-static {v0}, Lbmp;->S(Lbmp;)Lalg;

    move-result-object v0

    invoke-virtual {v0}, Lalg;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
