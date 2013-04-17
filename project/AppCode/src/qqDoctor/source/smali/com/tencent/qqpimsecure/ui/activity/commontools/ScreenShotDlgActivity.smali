.class public Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->setContentView(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, ".Su"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, ".su"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lagc;

    invoke-direct {v2, p0, v0}, Lagc;-><init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lagd;

    invoke-direct {v1, p0}, Lagd;-><init>(Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotDlgActivity;->a:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
