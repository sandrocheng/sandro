.class public final Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;

.field public f:Z

.field public g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->e:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->f:Z

    new-instance v0, Lyl;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lyl;-><init>(Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->c:Landroid/view/WindowManager;

    return-void
.end method
