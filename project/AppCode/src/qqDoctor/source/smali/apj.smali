.class final Lapj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lapj;->b:Lapf;

    iput-object p2, p0, Lapj;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lapj;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapj;->b:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lho;

    move-result-object v0

    invoke-virtual {v0, v4}, Lho;->S(Z)V

    iget-object v0, p0, Lapj;->b:Lapf;

    invoke-static {v0}, Lapf;->n(Lapf;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lok;->a:Lok;

    if-nez v1, :cond_0

    new-instance v1, Lok;

    invoke-direct {v1, v0}, Lok;-><init>(Landroid/content/Context;)V

    sput-object v1, Lok;->a:Lok;

    :cond_0
    sget-object v0, Lok;->a:Lok;

    iget-boolean v1, v0, Lok;->g:Z

    if-eqz v1, :cond_2

    invoke-static {}, Labv;->a()Labv;

    move-result-object v1

    iget-object v2, v0, Lok;->k:Labv$a;

    invoke-virtual {v1, v2}, Labv;->b(Labv$a;)V

    iput-boolean v4, v0, Lok;->g:Z

    iput-object v3, v0, Lok;->f:Lkf;

    iget-object v1, v0, Lok;->d:Lacj;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lok;->d:Lacj;

    invoke-virtual {v1}, Lacj;->a()V

    iput-object v3, v0, Lok;->d:Lacj;

    :cond_1
    iput-object v3, v0, Lok;->e:Lacj$a;

    :cond_2
    return-void
.end method
