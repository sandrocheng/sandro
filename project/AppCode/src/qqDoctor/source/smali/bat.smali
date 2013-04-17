.class final Lbat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0

    iput-object p1, p0, Lbat;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lbat;->a:Lbam;

    invoke-static {v0}, Lbam;->g(Lbam;)Lwr;

    move-result-object v4

    iget-object v0, p0, Lbat;->a:Lbam;

    invoke-static {v0}, Lbam;->o(Lbam;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbat;->a:Lbam;

    invoke-static {v1}, Lbam;->i(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbat;->a:Lbam;

    invoke-static {v1}, Lbam;->m(Lbam;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbat;->a:Lbam;

    invoke-static {v2}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lbat;->a:Lbam;

    invoke-static {v2}, Lbam;->f(Lbam;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbat;->a:Lbam;

    invoke-static {v3}, Lbam;->a(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lbat;->a:Lbam;

    invoke-static {v3}, Lbam;->d(Lbam;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lbat;->a:Lbam;

    invoke-static {v5}, Lbam;->c(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lwr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbat;->a:Lbam;

    invoke-static {v0}, Lbam;->p(Lbam;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbat;->a:Lbam;

    invoke-static {v0}, Lbam;->g(Lbam;)Lwr;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lwr;->a(IZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "kfc"

    const-string v1, "report, no success record, do nothing"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "NetworkFlowAutoAdjustConfigView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveConfigs error xxxxxxxx, errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
