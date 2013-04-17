.class public final Ltn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldv;

.field final synthetic c:Lsy;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Lsy;Ljava/lang/String;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 1

    iput-object p1, p0, Ltn;->c:Lsy;

    iput-object p2, p0, Ltn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Ltn;->b:Ldv;

    iput-object p4, p0, Ltn;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lto;

    invoke-direct {v0, p0}, Lto;-><init>(Ltn;)V

    invoke-virtual {v0}, Lto;->start()V

    iget-object v0, p0, Ltn;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
