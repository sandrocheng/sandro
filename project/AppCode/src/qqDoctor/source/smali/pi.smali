.class final Lpi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lph;


# direct methods
.method constructor <init>(Lph;)V
    .locals 0

    iput-object p1, p0, Lpi;->a:Lph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lpi;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    iget-object v0, v0, Lpe;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lpi;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lpe;->b(Lpe;I)I

    iget-object v0, p0, Lpi;->a:Lph;

    iget-object v0, v0, Lph;->a:Lpe;

    invoke-virtual {v0}, Lpe;->f()V

    return-void
.end method
