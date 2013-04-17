.class final Lblu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

.field private synthetic c:Lblt;


# direct methods
.method constructor <init>(Lblt;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;)V
    .locals 0

    iput-object p1, p0, Lblu;->c:Lblt;

    iput-object p2, p0, Lblu;->a:Ljava/util/List;

    iput-object p3, p0, Lblu;->b:Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final netxToDo()V
    .locals 4

    iget-object v0, p0, Lblu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lblu;->c:Lblt;

    iget-object v1, v0, Lblt;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v0, p0, Lblu;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lblu;->b:Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lblu;->c:Lblt;

    invoke-static {v0}, Lblt;->a(Lblt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lblu;->c:Lblt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lblt;->setBatchNext(Lcom/tencent/qqpimsecure/uilib/view/BaseView$IBatchNext;)V

    goto :goto_0
.end method
