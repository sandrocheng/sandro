.class final Lavj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lavi;


# direct methods
.method constructor <init>(Lavi;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lavj;->c:Lavi;

    iput p2, p0, Lavj;->a:I

    iput-object p3, p0, Lavj;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lavj;->c:Lavi;

    iget-object v0, v0, Lavi;->a:Lavh;

    iget v1, p0, Lavj;->a:I

    invoke-static {v0, v1}, Lavh;->a(Lavh;I)Ljava/lang/String;

    iget-object v0, p0, Lavj;->c:Lavi;

    iget-object v0, v0, Lavi;->a:Lavh;

    invoke-virtual {v0}, Lavh;->onResume()V

    iget-object v0, p0, Lavj;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
