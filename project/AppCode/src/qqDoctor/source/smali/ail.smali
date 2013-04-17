.class final Lail;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laik;


# direct methods
.method constructor <init>(Laik;)V
    .locals 0

    iput-object p1, p0, Lail;->a:Laik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eq v0, v2, :cond_1

    const/16 v0, 0x66b5

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    iput v4, v1, Lmb;->c:I

    :goto_0
    iget-object v0, p0, Lail;->a:Laik;

    invoke-static {v0}, Laik;->a(Laik;)Lja;

    move-result-object v0

    invoke-virtual {v0, v1}, Lja;->b(Lmb;)Z

    iget-object v0, p0, Lail;->a:Laik;

    invoke-static {v0}, Laik;->a(Laik;)Lja;

    invoke-static {v1}, Lja;->c(Lmb;)V

    iget v0, v1, Lmb;->c:I

    if-ne v0, v4, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lail;->a:Laik;

    invoke-static {v0}, Laik;->b(Laik;)V

    :cond_0
    iget-object v0, p0, Lail;->a:Laik;

    invoke-static {v0}, Laik;->c(Laik;)Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const/16 v0, 0x66b4

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    iput v2, v1, Lmb;->c:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
