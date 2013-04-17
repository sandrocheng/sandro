.class final Lcom/tencent/qqpimsecure/service/SecureService$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/service/SecureService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lve;

.field private d:Lvc;

.field private e:Lvd;

.field private synthetic f:Lcom/tencent/qqpimsecure/service/SecureService;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/service/SecureService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/SecureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    new-instance v0, Lve;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->c:Lve;

    new-instance v0, Lvc;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->d:Lvc;

    new-instance v0, Lvd;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->e:Lvd;

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.tencent.action.cloud_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lyt;

    invoke-direct {v2, v0}, Lyt;-><init>(Lyr;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v1, "switch_suspession_window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->c:Lve;

    invoke-virtual {v0}, Lve;->a()V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v0, v0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    new-instance v1, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setEnable(Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lvc;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->d:Lvc;

    sget-object v1, Lvc;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvc;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvc;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    sget-object v1, Lvc;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_ADD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->e:Lvd;

    invoke-virtual {v1, v0, p1}, Lvd;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_DELETE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->e:Lvd;

    invoke-virtual {v1, v0, p1}, Lvd;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->c:Lve;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lve;->a(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$d;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$d;->b:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    return-void
.end method
