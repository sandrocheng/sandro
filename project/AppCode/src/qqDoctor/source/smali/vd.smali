.class public final Lvd;
.super Ljava/lang/Object;


# static fields
.field private static d:Z


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lvd;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvd;->a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    iput-object p1, p0, Lvd;->c:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lvd;->b:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lvd;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_ADD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    iget-object v1, p0, Lvd;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvd;->a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    :try_start_0
    iget-object v0, p0, Lvd;->a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getIntentInfo(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lvd;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lvd;->a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    sget-object v2, Lkg;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    sput-boolean v0, Lvd;->d:Z

    :cond_0
    sget-boolean v0, Lvd;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_DELETE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvd;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lvd;->a:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-boolean v0, Lvd;->d:Z

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
