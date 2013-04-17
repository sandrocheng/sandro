.class final Lbnv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbnv;->b:Lbnt;

    iput-object p2, p0, Lbnv;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v1}, Lbnt;->a()Lalr;

    move-result-object v1

    invoke-virtual {v1}, Lalr;->d()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v1}, Lbnt;->a()Lalr;

    move-result-object v1

    invoke-virtual {v1}, Lalr;->f()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v1}, Lbnt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    iget-object v2, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v2}, Lbnt;->a()Lalr;

    move-result-object v2

    invoke-virtual {v2}, Lalr;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lfy;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)[Z

    move-result-object v5

    array-length v1, v5

    if-lez v1, :cond_2

    array-length v6, v5

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v6, :cond_1

    aget-boolean v0, v5, v1

    if-eqz v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lfy;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-static {v0}, Lbnt;->a(Lbnt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v0}, Lbnt;->a()Lalr;

    move-result-object v7

    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-virtual {v0}, Lbnt;->a()Lalr;

    move-result-object v8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v8, v0}, Lalr;->b(Lkw;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lalr;->a(Ljava/lang/Integer;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-static {v0}, Lbnt;->b(Lbnt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-static {v0}, Lbnt;->c(Lbnt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c0

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_1
    iget-object v0, p0, Lbnv;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lbnv;->b:Lbnt;

    invoke-static {v0}, Lbnt;->d(Lbnt;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01c1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1
.end method
