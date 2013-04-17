.class final Laom;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Laoa;


# direct methods
.method constructor <init>(Laoa;I)V
    .locals 0

    iput-object p1, p0, Laom;->b:Laoa;

    iput p2, p0, Laom;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Laom;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->d(Laoa;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->av(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->aw(Laoa;)Z

    return-void

    :cond_1
    iget v0, p0, Laom;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->e(Laoa;)Z

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->f(Laoa;)Z

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)V

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxb;->a(Z)V

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->i(Laoa;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Laom;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    invoke-virtual {v0}, Lum;->a()V

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->au(Laoa;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lqc;->h:Z

    iget-object v0, p0, Laom;->b:Laoa;

    invoke-static {v0}, Laoa;->r(Laoa;)V

    goto :goto_0
.end method
