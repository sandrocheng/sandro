.class public final Lgr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lkw;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lgr;->a:Landroid/app/Activity;

    iput-object p2, p0, Lgr;->b:Lkw;

    iput-object p3, p0, Lgr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lgr;->a:Landroid/app/Activity;

    iget-object v1, p0, Lgr;->b:Lkw;

    invoke-static {v0, v1}, Lfy;->a(Landroid/app/Activity;Lkw;)Z

    iget-object v0, p0, Lgr;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
