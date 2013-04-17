.class final Lbds;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbdr;


# direct methods
.method constructor <init>(Lbdr;)V
    .locals 0

    iput-object p1, p0, Lbds;->a:Lbdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbds;->a:Lbdr;

    invoke-static {}, Lbdr;->a()Z

    iget-object v0, p0, Lbds;->a:Lbdr;

    invoke-static {v0, p1}, Lbdr;->a(Lbdr;I)V

    iget-object v0, p0, Lbds;->a:Lbdr;

    invoke-static {v0}, Lbdr;->a(Lbdr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbdr;->a(Landroid/content/Context;I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lbds;->a:Lbdr;

    invoke-static {v0}, Lbdr;->b(Lbdr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lbds;->a:Lbdr;

    invoke-static {v0}, Lbdr;->c(Lbdr;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
