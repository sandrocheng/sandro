.class final Laoe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laoe;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x8

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->c(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->d(Laoa;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->e(Laoa;)Z

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->f(Laoa;)Z

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lxb;->a(Z)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->i(Laoa;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->o(Laoa;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->p(Laoa;)V

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->q(Laoa;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->r(Laoa;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->r(Laoa;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->r(Laoa;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laoe;->a:Laoa;

    invoke-static {v1}, Laoa;->s(Laoa;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "default_content"

    iget-object v2, p0, Laoe;->a:Laoa;

    invoke-static {v2}, Laoa;->t(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0399

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_where"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Laoe;->a:Laoa;

    invoke-static {v1}, Laoa;->u(Laoa;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
