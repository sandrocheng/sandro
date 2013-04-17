.class final Laoi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laoi;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->S(Laoa;)V

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->T(Laoa;)V

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->U(Laoa;)V

    const/4 v3, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v5, 0x7d9

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    move v1, v4

    :goto_1
    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->R(Laoa;)Lum;

    move-result-object v3

    iget-object v3, v3, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->R(Laoa;)Lum;

    move-result-object v3

    iget-object v3, v3, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->o(Laoa;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->U(Laoa;)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->ab(Laoa;)Ljc;

    move-result-object v3

    iget-object v3, v3, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    const-string v5, "last_check_is_optimization"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v0, Llc;->e:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/update/CheckResult;

    iget-object v1, p0, Laoi;->a:Laoa;

    invoke-static {v1}, Laoa;->ac(Laoa;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Laoj;

    invoke-direct {v3, p0, v0}, Laoj;-><init>(Laoi;Lcom/tencent/tmsecure/module/update/CheckResult;)V

    invoke-static {v1, v0, v2, v3}, La;->a(Landroid/content/Context;Lcom/tencent/tmsecure/module/update/CheckResult;ZLcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    :cond_2
    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    iget-object v1, p0, Laoi;->a:Laoa;

    invoke-static {v1}, Laoa;->D(Laoa;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    iget-object v0, p0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endScroll()V

    return-void

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->o(Laoa;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->D(Laoa;)I

    move-result v3

    const/16 v5, 0x64

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v3, p0, Laoi;->a:Laoa;

    invoke-static {v3}, Laoa;->n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move-object v0, v3

    move v1, v2

    goto/16 :goto_1
.end method
