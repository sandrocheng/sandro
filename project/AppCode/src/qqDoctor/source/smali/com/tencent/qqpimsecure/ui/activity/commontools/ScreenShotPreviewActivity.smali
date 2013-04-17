.class public Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lage;

    invoke-direct {v0, p0}, Lage;-><init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030140

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->setContentView(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "strFileName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->c:Ljava/lang/String;

    invoke-static {v0}, La;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotPreviewActivity;->a:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
