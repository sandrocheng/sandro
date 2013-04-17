.class public final Lagc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lagc;->b:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    iput-object p2, p0, Lagc;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    iget-object v0, p0, Lagc;->b:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    iget-object v1, p0, Lagc;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lagc;->b:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->finish()V

    return-void
.end method
