.class final Lnk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lnk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p2, p0, Lnk;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lnk;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method