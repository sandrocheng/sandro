.class final Lazq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lazj;


# direct methods
.method constructor <init>(Lazj;)V
    .locals 0

    iput-object p1, p0, Lazq;->a:Lazj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lazq;->a:Lazj;

    invoke-virtual {v0}, Lazj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    sget v1, Lfs;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    return-void
.end method
