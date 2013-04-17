.class public final Lxg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/permission/PermissionManager$IInitStepObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg$a;
    }
.end annotation


# static fields
.field public static a:Lxg$a;


# instance fields
.field public b:I

.field public c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxg$a;

    invoke-direct {v0}, Lxg$a;-><init>()V

    sput-object v0, Lxg;->a:Lxg$a;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lxg;->b:I

    iput-boolean v2, p0, Lxg;->d:Z

    iput-boolean v1, p0, Lxg;->e:Z

    iput-boolean v1, p0, Lxg;->g:Z

    iput-boolean v1, p0, Lxg;->h:Z

    iput-boolean v2, p0, Lxg;->d:Z

    iput-boolean p2, p0, Lxg;->g:Z

    iput-boolean p1, p0, Lxg;->h:Z

    iput-boolean v1, p0, Lxg;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lxg;->e:Z

    return v0
.end method

.method public final onReached(IZ)Z
    .locals 4

    iput p1, p0, Lxg;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxg;->e:Z

    iget-boolean v0, p0, Lxg;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lxg;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lxg;->h:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0b06a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxg;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lxg;->f:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/permission/RestartTipDialog;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "reboot_tips"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1800

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lxg;->a:Lxg$a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lxg;->a:Lxg$a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    sget-object v0, Lxg;->a:Lxg$a;

    iget-boolean v0, v0, Lxg$a;->a:Z

    iput-boolean v0, p0, Lxg;->c:Z

    iget-boolean v0, p0, Lxg;->c:Z

    :goto_2
    return v0

    :cond_2
    iget-boolean v1, p0, Lxg;->g:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0b06a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lxg;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    iput-object v1, p0, Lxg;->f:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    iput-boolean p2, p0, Lxg;->c:Z

    iget-boolean v0, p0, Lxg;->c:Z

    goto :goto_2
.end method
