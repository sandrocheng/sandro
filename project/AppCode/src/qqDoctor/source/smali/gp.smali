.class final Lgp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lge;


# direct methods
.method constructor <init>(Lge;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lgp;->c:Lge;

    iput-object p2, p0, Lgp;->a:Lkw;

    iput-object p3, p0, Lgp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lgp;->c:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgp;->c:Lge;

    iget-object v0, v0, Lge;->b:Lge$a;

    iget-object v1, p0, Lgp;->a:Lkw;

    iget-object v0, v0, Lge$a;->a:Lbod;

    invoke-virtual {v0, v1}, Lbod;->b(Lkw;)V

    :cond_0
    iget-object v0, p0, Lgp;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
