.class final Lbmk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Z

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbmj;


# direct methods
.method constructor <init>(Lbmj;Ljava/util/ArrayList;ZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbmk;->d:Lbmj;

    iput-object p2, p0, Lbmk;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lbmk;->b:Z

    iput-object p4, p0, Lbmk;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbmk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lbmk;->d:Lbmj;

    invoke-static {v0}, Lbmj;->a(Lbmj;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lbmk;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lbmk;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbmk;->d:Lbmj;

    invoke-virtual {v0, v1}, Lbmj;->a(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbmk;->d:Lbmj;

    iget-object v2, p0, Lbmk;->d:Lbmj;

    iget-object v2, v2, Lbmj;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0, v2, v1}, Lgx;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/tmsecure/module/software/SoftwareManager;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
