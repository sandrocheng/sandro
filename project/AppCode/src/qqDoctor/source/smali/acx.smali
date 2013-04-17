.class final Lacx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lacx;->b:Lacr;

    iput-object p2, p0, Lacx;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lacx;->b:Lacr;

    sget-object v1, Lacr$c;->b:Lacr$c;

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$c;)V

    iget-object v0, p0, Lacx;->b:Lacr;

    invoke-static {v0}, Lacr;->b(Lacr;)Lho;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lho;->p(Z)V

    iget-object v0, p0, Lacx;->b:Lacr;

    invoke-static {v0}, Lacr;->c(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->continueScan()V

    iget-object v0, p0, Lacx;->b:Lacr;

    sget-object v1, Lacr$b;->h:Lacr$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    iget-object v0, p0, Lacx;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
