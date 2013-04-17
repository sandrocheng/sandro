.class final Lbou;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbot;


# direct methods
.method constructor <init>(Lbot;)V
    .locals 0

    iput-object p1, p0, Lbou;->a:Lbot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->a(Lbot;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->b(Lbot;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->c(Lbot;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->d(Lbot;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->e(Lbot;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->f(Lbot;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbou;->a:Lbot;

    sget-object v1, Lbot$b;->c:Lbot$b;

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lbot$b;)Lbot$b;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->g(Lbot;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->h(Lbot;)Lbot$b;

    move-result-object v0

    sget-object v1, Lbot$b;->a:Lbot$b;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66a8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbou;->a:Lbot;

    invoke-static {v0}, Lbot;->i(Lbot;)V

    goto :goto_0
.end method
