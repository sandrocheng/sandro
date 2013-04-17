.class final Lrr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrn$a;


# direct methods
.method constructor <init>(Lrn$a;)V
    .locals 0

    iput-object p1, p0, Lrr;->a:Lrn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lrs;

    invoke-direct {v1, p0}, Lrs;-><init>(Lrr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lrr;->a:Lrn$a;

    iget-object v0, v0, Lrn$a;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/BaseWindow;->unShow()V

    return-void
.end method
