.class public final Lagd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;)V
    .locals 0

    iput-object p1, p0, Lagd;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    iget-object v0, p0, Lagd;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->finish()V

    iget-object v0, p0, Lagd;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    iget-object v1, p0, Lagd;->a:Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;

    const v2, 0x7f0b0889

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
