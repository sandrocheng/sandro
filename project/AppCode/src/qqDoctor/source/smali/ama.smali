.class final Lama;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lalz;


# direct methods
.method constructor <init>(Lalz;)V
    .locals 0

    iput-object p1, p0, Lama;->a:Lalz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lama;->a:Lalz;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    move-object v1, p1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lalz;->a(Lkw;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    invoke-static {}, Lkw;->w()V

    iget-object v0, p0, Lama;->a:Lalz;

    invoke-virtual {v0, p1}, Lalz;->a(Landroid/view/View;)V

    move-object v0, p1

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lama;->a:Lalz;

    invoke-static {v0}, Lalz;->a(Lalz;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lama;->a:Lalz;

    invoke-static {v0}, Lalz;->b(Lalz;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0974

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lama;->a:Lalz;

    invoke-static {v0}, Lalz;->c(Lalz;)Lbqv;

    move-result-object v0

    invoke-virtual {v0}, Lbqv;->a()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x663b

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x663c

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0
.end method
