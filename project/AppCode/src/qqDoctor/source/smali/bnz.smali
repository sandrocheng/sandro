.class final Lbnz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbnz;->c:Lbnt;

    iput-object p2, p0, Lbnz;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lbnz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lbnz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lbnz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v3, p0, Lbnz;->c:Lbnt;

    invoke-virtual {v3}, Lbnt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lfy;->b(Landroid/app/Activity;Lkw;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbnz;->c:Lbnt;

    invoke-static {v3}, Lbnt;->a(Lbnt;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lbnz;->c:Lbnt;

    invoke-virtual {v3}, Lbnt;->a()Lalr;

    move-result-object v3

    invoke-virtual {v3}, Lalr;->c()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lbnz;->c:Lbnt;

    invoke-virtual {v4}, Lbnt;->a()Lalr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lalr;->b(Lkw;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbnz;->c:Lbnt;

    invoke-virtual {v0}, Lbnt;->a()Lalr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lalr;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbnz;->c:Lbnt;

    invoke-static {v0}, Lbnt;->f(Lbnt;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbnz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
