.class final Lbas;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;


# instance fields
.field private synthetic a:Lbam;


# direct methods
.method constructor <init>(Lbam;)V
    .locals 0

    iput-object p1, p0, Lbas;->a:Lbam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectChange(I)V
    .locals 6

    const v5, 0x7f0b070f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->m(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->n(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->o(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->g(Lbam;)Lwr;

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->g(Lbam;)Lwr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwr;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->m(Lbam;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbas;->a:Lbam;

    invoke-static {v2}, Lbam;->n(Lbam;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->k(Lbam;)V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->n(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0, v4}, Lbam;->a(Lbam;Z)V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->n(Lbam;)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    :goto_0
    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->m(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->clickView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0, v3}, Lbam;->a(Lbam;Z)V

    iget-object v0, p0, Lbas;->a:Lbam;

    invoke-static {v0}, Lbam;->h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    iget-object v1, p0, Lbas;->a:Lbam;

    invoke-static {v1}, Lbam;->n(Lbam;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    goto :goto_0
.end method
