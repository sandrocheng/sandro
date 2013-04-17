.class final Lbao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;


# instance fields
.field private synthetic a:Landroid/view/View$OnClickListener;

.field private synthetic b:Lbam;


# direct methods
.method constructor <init>(Lbam;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lbao;->b:Lbam;

    iput-object p2, p0, Lbao;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectChange(I)V
    .locals 4

    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->d(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->e(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->f(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbao;->b:Lbam;

    invoke-static {v1}, Lbam;->g(Lbam;)Lwr;

    iget-object v1, p0, Lbao;->b:Lbam;

    invoke-static {v1}, Lbam;->g(Lbam;)Lwr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwr;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbao;->b:Lbam;

    invoke-static {v1}, Lbam;->d(Lbam;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lbao;->b:Lbam;

    invoke-static {v2}, Lbam;->e(Lbam;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const-string v1, ""

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->f(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "CMCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "20000"

    :goto_0
    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lbao;->b:Lbam;

    invoke-static {v3}, Lbam;->d(Lbam;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lbao;->b:Lbam;

    invoke-static {v3}, Lbam;->d(Lbam;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->c(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    const v2, 0x7f0b0711

    iget-object v3, p0, Lbao;->b:Lbam;

    invoke-static {v3}, Lbam;->e(Lbam;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->c(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    move-result-object v0

    iget-object v1, p0, Lbao;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->f(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UNICOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "70000"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbao;->b:Lbam;

    invoke-static {v0}, Lbam;->f(Lbam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "TELECOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "60000"

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
