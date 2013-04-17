.class public final Lalx;
.super Lakw;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
            "<",
            "Lkw;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Lakw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public final a(Lakw$a;Lkw;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lakw$a;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Lkw;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lakw$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p1, Lakw$a;->j:Landroid/widget/Button;

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const-class v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    :try_start_0
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->goToInstalledAppDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lalx;->mContext:Landroid/content/Context;

    const v1, 0x7f0b089b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method
