.class final Lblj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lblh;


# direct methods
.method constructor <init>(Lblh;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lblj;->c:Lblh;

    iput-object p2, p0, Lblj;->a:Lkw;

    iput-object p3, p0, Lblj;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lblj;->c:Lblh;

    iget-object v1, p0, Lblj;->a:Lkw;

    invoke-virtual {v0, v1}, Lblh;->a(Lkw;)V

    iget-object v0, p0, Lblj;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
