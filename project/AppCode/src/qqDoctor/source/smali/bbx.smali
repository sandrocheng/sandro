.class final Lbbx;
.super Ljava/lang/Object;

# interfaces
.implements Lxi$a;


# instance fields
.field private synthetic a:Lbbw;


# direct methods
.method constructor <init>(Lbbw;)V
    .locals 0

    iput-object p1, p0, Lbbx;->a:Lbbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lbbx;->a:Lbbw;

    invoke-static {v0}, Lbbw;->a(Lbbw;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbx;->a:Lbbw;

    invoke-static {v0}, Lbbw;->a(Lbbw;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lbbx;->a:Lbbw;

    invoke-static {v0}, Lbbw;->b(Lbbw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbby;->a(Landroid/content/Context;I)V

    return-void
.end method
